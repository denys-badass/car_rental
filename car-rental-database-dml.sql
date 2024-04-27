INSERT INTO car_types (car_type, daily_price) VALUES 
('Econom', 50.00),
('Standard', 70.00),
('Business', 100.00),
('Premium', 150.00);

INSERT INTO branches (address, city, region, postal_code, phone_number) VALUES 
('123 Main St', 'New York', 'NY', '10001', '555-1234'),
('3031 Malibu Lane', 'Los Angeles', 'CA', '90001', '555-5678'),
('3031 N Clark St', 'Chicago', 'IL', '60601', '555-9101'),
('101 Pine St', 'Houston', 'TX', '77001', '555-1212'),
('229 Rainier Ave', 'Seattle', 'WA', '98101', '555-3434');

INSERT INTO employees (branch_id, first_name, last_name, birth_date, address, city, region, email, salary) VALUES 
((select branch_id from branches where city like 'New York'), 'John', 'Doe', '1990-05-15', '425 Chestnut Avenue', 'New York', 'NY', 'john.doe@car-rental.com', 60000.00),
((select branch_id from branches where city like 'New York'), 'Jane', 'Smith', '1985-10-20', '223 Walnut Street', 'New York', 'NY', 'jane.smith@car-rental.com', 55000.00),
((select branch_id from branches where city like 'Los Angeles'), 'Michael', 'Johnson', '1988-03-25', '28 Venice Beach Drive', 'Los Angeles', 'CA', 'michael.johnson@car-rental.com', 62000.00),
((select branch_id from branches where city like 'Los Angeles'), 'Emily', 'Brown', '1987-07-12', '425 Santa Monica Boulevard', 'Los Angeles', 'CA', 'emily.brown@car-rental.com', 53000.00),
((select branch_id from branches where city like 'Chicago'), 'Christopher', 'Williams', '1992-09-05', '28 E Grand Ave', 'Chicago', 'IL', 'christopher.williams@car-rental.com', 61000.00),
((select branch_id from branches where city like 'Chicago'), 'Amanda', 'Jones', '1989-12-10', '25 S Halsted St', 'Chicago', 'IL', 'amanda.jones@car-rental.com', 54000.00),
((select branch_id from branches where city like 'Houston'), 'Daniel', 'Brown', '1991-02-18', '324 Magnolia St', 'Houston', 'TX', 'daniel.brown@car-rental.com', 62000.00),
((select branch_id from branches where city like 'Houston'), 'Sarah', 'Miller', '1986-06-30', '21 Willow St', 'Houston', 'TX', 'sarah.miller@car-rental.com', 56000.00),
((select branch_id from branches where city like 'Seattle'), 'Matthew', 'Martinez', '1990-04-28', '78 Pike St', 'Seattle', 'WA', 'matthew.martinez@car-rental.com', 63000.00),
((select branch_id from branches where city like 'Seattle'), 'Olivia', 'Taylor', '1988-11-15', '11 Bell St', 'Seattle', 'WA', 'olivia.taylor@car-rental.com', 57000.00),
((select branch_id from branches where city like 'New York'), 'David', 'Wilson', '1993-08-03', '2021 Spruce Boulevard', 'New York', 'NY', 'david.wilson@car-rental.com', 51000.00),
((select branch_id from branches where city like 'Los Angeles'), 'Jessica', 'Garcia', '1992-01-20', '122 Beverly Hills Road', 'Los Angeles', 'CA', 'jessica.garcia@car-rental.com', 54000.00),
((select branch_id from branches where city like 'Chicago'), 'William', 'Rodriguez', '1984-07-29', '19 Lincoln Ave', 'Chicago', 'IL', 'william.rodriguez@car-rental.com', 55000.00),
((select branch_id from branches where city like 'Houston'), 'Sophia', 'Hernandez', '1985-09-12', '718 Cypress St', 'Houston', 'TX', 'sophia.hernandez@car-rental.com', 58000.00),
((select branch_id from branches where city like 'Seattle'), 'James', 'Lopez', '1995-03-18', '314 Summit Ave', 'Seattle', 'WA', 'james.lopez@car-rental.com', 52000.00),
((select branch_id from branches where city like 'New York'), 'Ashley', 'Gonzalez', '1987-12-01', '1819 Birch Drive', 'New York', 'NY', 'ashley.gonzalez@car-rental.com', 55000.00),
((select branch_id from branches where city like 'Los Angeles'), 'Benjamin', 'Perez', '1990-05-05', '19 Wilshire Boulevard', 'Los Angeles', 'CA', 'benjamin.perez@car-rental.com', 56000.00),
((select branch_id from branches where city like 'Chicago'), 'Mia', 'Sanchez', '1993-02-14', '516 Belmont Ave,', 'Chicago', 'IL', 'mia.sanchez@car-rental.com', 53000.00),
((select branch_id from branches where city like 'Houston'), 'Ethan', 'Rivera', '1988-10-08', '738 Sycamore St', 'Houston', 'TX', 'ethan.rivera@car-rental.com', 57000.00),
((select branch_id from branches where city like 'Seattle'), 'Emma', 'Barnes', '1986-06-25', '2223 Cherry St', 'Seattle', 'WA', 'emma.barnes@car-rental.com', 54000.00),
((select branch_id from branches where city like 'New York'), 'Alexander', 'Scott', '1991-09-30', '1617 Cedar Court', 'New York', 'NY', 'alexander.scott@car-rental.com', 56000.00),
((select branch_id from branches where city like 'Los Angeles'), 'Madison', 'Green', '1990-08-22', '516 Rodeo Drive', 'Los Angeles', 'CA', 'madison.green@car-rental.com', 55000.00),
((select branch_id from branches where city like 'Chicago'), 'Noah', 'Adams', '1989-04-11', '101 State St', 'Chicago', 'IL', 'noah.adams@car-rental.com', 54000.00),
((select branch_id from branches where city like 'Houston'), 'Chloe', 'Gomez', '1992-11-03', '697 Juniper St', 'Houston', 'TX', 'chloe.gomez@car-rental.com', 58000.00),
((select branch_id from branches where city like 'Seattle'), 'Elijah', 'Kelly', '1994-01-28', '494 Elm St', 'Seattle', 'WA', 'elijah.kelly@car-rental.com', 52000.00),
((select branch_id from branches where city like 'New York'), 'Grace', 'Howard', '1985-07-17', '315 Maple Road', 'New York', 'NY', 'grace.howard@car-rental.com', 57000.00),
((select branch_id from branches where city like 'Los Angeles'), 'Avery', 'Richardson', '1988-12-09', '13 Melrose Place', 'Los Angeles', 'CA', 'avery.richardson@car-rental.com', 56000.00),
((select branch_id from branches where city like 'Chicago'), 'Logan', 'Myers', '1991-06-27', '34 W Madison St', 'Chicago', 'IL', 'logan.myers@car-rental.com', 55000.00),
((select branch_id from branches where city like 'Houston'), 'Sofia', 'Diaz', '1987-09-15', '91 Elmwood Dr', 'Houston', 'TX', 'sofia.diaz@car-rental.com', 54000.00),
((select branch_id from branches where city like 'Seattle'), 'Lucas', 'Russell', '1993-04-19', '435 Fir St', 'Seattle', 'WA', 'lucas.russell@car-rental.com', 59000.00);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'John' AND last_name like 'Doe'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city like 'New York'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'John' AND last_name like 'Doe'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Michael' AND last_name like 'Johnson'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city like 'Los Angeles'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Michael' AND last_name like 'Johnson'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Christopher' AND last_name like 'Williams'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city like 'Chicago'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Christopher' AND last_name like 'Williams'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Daniel' AND last_name like 'Brown'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city like 'Houston'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Daniel' AND last_name like 'Brown'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Matthew' AND last_name like 'Martinez'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city like 'Seattle'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name like 'Matthew' AND last_name like 'Martinez'
);

INSERT INTO customers (first_name, last_name, date_of_birth, phone_number, email, address, city, region, passport, driver_license)
VALUES
('John', 'Smith', '1990-05-15', '123-456-789', 'john.smith@gmail.com', '123 Alumni Hall', 'New York', 'NY', 'AB123456', 'DL123456'),
('Emma', 'Johnson', '1985-09-22', '987-654-321', 'emma.johnson@yahoo.com', '456 Sepulveda Blvd', 'Los Angeles', 'CA', 'CD987654', 'DL987654'),
('Michael', 'Brown', '1982-07-10', '555-123-456', 'michael.brown@hotmail.com', '554 W Diversey', 'Chicago', 'IL', 'EF456789', 'DL456789'),
('Sarah', 'Davis', '1978-12-03', '555-987-654', 'sarah.davis@outlook.com', '7204-D Southwest Freeway', 'Houston', 'TX', 'GH654321', 'DL654321'),
('Christopher', 'Wilson', '1993-03-28', '777-123-456', 'christopher.wilson@aol.com', '819 East Pike St', 'Seattle', 'WA', 'IJ234567', 'DL234567'),
('Jennifer', 'Martinez', '1989-08-17', '777-987-654', 'jennifer.martinez@icloud.com', '371 Washington St', 'Boston', 'MA', 'KL345678', 'DL345678'),
('James', 'Taylor', '1980-11-05', '333-123-456', 'james.taylor@protonmail.com', '325 Gellert Blvd', 'San Francisco', 'CA', 'MN456789', 'DL456789'),
('Jessica', 'Anderson', '1987-04-12', '333-987-654', 'jessica.anderson@yandex.com', '2701 N Belt Line RD', 'Dallas', 'TX', 'OP567890', 'DL567890'),
('Daniel', 'Thomas', '1975-06-20', '888-123-456', 'daniel.thomas@tutanota.com', '1113 Key Plaza', 'Miami', 'FL', 'QR678901', 'DL678901'),
('Elizabeth', 'Lee', '1984-10-08', '888-987-654', 'elizabeth.lee@protonmail.ch', '1851 S Columbus Blvd', 'Philadelphia', 'PA', 'ST789012', 'DL789012'),
('William', 'White', '1991-02-14', '222-123-456', 'william.white@fastmail.fm', '200 Lakeline Blvd', 'Austin', 'TX', 'UV890123', 'DL890123'),
('Ashley', 'Harris', '1986-05-30', '222-987-654', 'ashley.harris@mail.com', '728 SE Washington St', 'Portland', 'OR', 'WX901234', 'DL901234'),
('David', 'Martin', '1979-09-10', '444-123-456', 'david.martin@inbox.com', '4400 Ashford Dunwoody St', 'Atlanta', 'GA', 'YZ012345', 'DL012345'),
('Samantha', 'Thompson', '1988-01-25', '444-987-654', 'samantha.thompson@zoho.com', '22 E Ray Road', 'Phoenix', 'AZ', 'AB123456', 'DL123456'),
('Joseph', 'Garcia', '1983-06-15', '999-123-456', 'joseph.garcia@tutanota.de', '111 Monroe St', 'Detroit', 'MI', 'CD234567', 'DL234567'),
('Olivia', 'Martinez', '1994-04-02', '999-987-654', 'olivia.martinez@protonmail.com', '132 2nd St', 'Minneapolis', 'MN', 'EF345678', 'DL345678'),
('Charles', 'Robinson', '1981-12-20', '111-123-456', 'charles.robinson@pm.me', '55 Cornerstar Way', 'Denver', 'CO', 'GH456789', 'DL456789'),
('Emily', 'Lewis', '1980-08-03', '111-987-654', 'emily.lewis@protonmail.com', '609 N Stephanie St', 'Las Vegas', 'NV', 'IJ567890', 'DL567890'),
('Matthew', 'Hall', '1990-03-18', '666-123-456', 'matthew.hall@posteo.de', '721 E Independence Blvd', 'Charlotte', 'NC', 'KL678901', 'DL678901'),
('Sophia', 'Scott', '1985-11-11', '666-987-654', 'sophia.scott@disroot.org', '26 25th Ave NE', 'Seattle', 'WA', 'MN789012', 'DL789012');