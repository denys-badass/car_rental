-- 1) View with Conditions: list of all cars that are currently in rent.
CREATE OR REPLACE VIEW active_rentals_view AS
SELECT 
    r.rental_id,
    r.car_id, 
    r.start_date, 
    r.end_date, 
    r.customer_id
FROM
    rentals AS r
WHERE 
    r.end_date > CURRENT_DATE;


-- 2) View with Joining: current financial indicators for each branch.
CREATE OR REPLACE VIEW branches_financial_performance_view AS
SELECT
    b.branch_id, 
    b.city ||', '|| b.address AS branch, 
    COUNT(r.rental_id)::text AS number_of_rentals, 
    SUM(p.total_amount) AS total_income
FROM 
    branches AS b
JOIN 
    rentals AS r ON b.branch_id = r.start_branch
JOIN 
    agreements AS a USING(rental_id)
JOIN 
    payments AS p USING(agreement_id)
GROUP BY 
    b.branch_id;


-- 3) View with Subquery: customer history of rentals.
CREATE OR REPLACE VIEW customer_rental_history_view AS
SELECT 
    customer,
    total_rentals,
    total_spent,
    avg_duration_days
FROM (
    SELECT 
        concat_ws(' ', c.first_name, c.last_name) as customer ,
        COUNT(*) AS total_rentals,
        SUM(p.total_amount) AS total_spent,
        AVG(r.end_date - r.start_date) AS avg_duration_days
    FROM 
        rentals AS r
    JOIN 
        customers AS c USING(customer_id)
    JOIN 
        payments AS p ON r.rental_id = p.agreement_id
    GROUP BY 
        customer
) AS subtable
ORDER BY total_rentals DESC;


-- 4) View with Union: combined view of customer and employees adresses.
CREATE OR REPLACE VIEW combined_addresses_view AS
SELECT
    first_name || ' ' || last_name AS full_name, 
    address, 
    city, 
    region, 
    email, 
    'Customer' AS type
FROM 
    customers
UNION
SELECT
    first_name || ' ' || last_name AS full_name, 
    address, 
    city, 
    region, 
    email, 
    'Employee' AS type
FROM 
    employees;


-- 5) Updatable View (editable columns): can update inventory of cars available at each branch
CREATE VIEW branch_inventory_view AS
SELECT 
    car_id, 
    branch_id AS branch
FROM 
    cars
WHERE 
    availability_status = true
WITH CHECK OPTION;


-- 6) View on the Select from Another View: show avaliable cars from branch_avaliable_view which located in New York
CREATE VIEW available_cars_in_new_york_view AS
SELECT
    car_id
FROM 
    branch_inventory_view
JOIN
    branches AS b ON branch = b.branch_id
WHERE 
    b.city LIKE 'New York';


-- 7) View with Check Option: updatable employees.
CREATE VIEW high_salary_employees AS
SELECT *
FROM 
    employees
WHERE 
    salary > 50000
WITH CHECK OPTION;