-- 1) Calculate payment by agreement (multiplying the duration of the rental and daily price of the car type). / scalar function

CREATE OR REPLACE FUNCTION calculate_payment(_agreement_id INT)
RETURNS DECIMAL(10,5) AS 
$$
DECLARE
    payment_amount DECIMAL(10,5);
   	rental_id_associated INT;
BEGIN
	  SELECT rental_id INTO rental_id_associated FROM agreements WHERE agreement_id = _agreement_id;
	  IF rental_id_associated IS NULL THEN
        RAISE EXCEPTION 'No rental found for the given agreement ID.';
    END IF;
   
    SELECT (r.end_date - r.start_date +1) * ct.daily_price INTO payment_amount
    FROM rentals r
    JOIN cars c ON r.car_id = c.car_id
    JOIN car_types ct ON c.car_type_id = ct.car_type_id
    WHERE r.rental_id = _agreement_id;

    IF payment_amount IS NULL OR payment_amount < 0 THEN
        RAISE EXCEPTION 'Invalid payment amount calculated.';
    END IF;

    RETURN payment_amount;
END
$$ 
LANGUAGE plpgsql;

-- test:
SELECT calculate_payment(10)


-- 2) All rentals for a given car during a specific year. / table funtion


CREATE OR REPLACE FUNCTION get_agreements_for_car(_car_id INT, _target_year INT)
RETURNS TABLE(agreement_id INT, employee_id INT, rental_id INT) AS 
$$
BEGIN
    IF NOT EXISTS (SELECT * FROM cars WHERE car_id = _car_id) THEN
        RAISE EXCEPTION 'Given car_id does not exist.';
    END IF;

    RETURN QUERY 
    SELECT a.agreement_id, a.employee_id, a.rental_id
    FROM agreements a
    JOIN rentals r ON a.rental_id = r.rental_id
    WHERE r.car_id = _car_id
      AND EXTRACT(YEAR FROM r.start_date) <= _target_year
      AND EXTRACT(YEAR FROM r.end_date) >= _target_year;
END
$$ 
LANGUAGE plpgsql;

-- test
SELECT * FROM get_agreements_for_car(20, 2024)


SELECT get.agreement_id, r.start_date, r.end_date, r.customer_id FROM get_agreements_for_car(1, 2024) AS get
JOIN rentals r USING(rental_id)


-- 3) Rental history for a specific customer. / custom type function


CREATE TYPE rental_history_type AS (
    agreement_id INT,
    start_date DATE,
    end_date DATE,
    car_id INT,
    mileage INT,
    total_amount DECIMAL(10,5)
);

CREATE OR REPLACE FUNCTION customer_rental_history(_customer_id INT)
RETURNS SETOF rental_history_type AS  
$$
BEGIN
	  IF NOT EXISTS (SELECT * FROM customers WHERE customer_id = _customer_id) THEN
        RAISE EXCEPTION 'Given customer_id does not exist.';
    END IF;	
	
    RETURN QUERY 
    SELECT a.agreement_id, r.start_date, r.end_date, c.car_id, (r.end_odometer - r.start_odometer) AS mileage, p.total_amount
    FROM agreements a
    JOIN rentals r USING(rental_id)
 		JOIN payments p USING(agreement_id)
		JOIN cars c ON r.car_id = c.car_id
    WHERE r.customer_id = _customer_id;
END
$$ 
LANGUAGE plpgsql;

--test
SELECT * FROM customer_rental_history(1)



