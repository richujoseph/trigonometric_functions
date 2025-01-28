-- SQL Operations for Trigonometric Functions

-- Create the table
CREATE TABLE angle (
    Angle INT,
    sin FLOAT,
    cos FLOAT,
    tan FLOAT,
    cot FLOAT,
    sec FLOAT
);

-- Insert values into the table
INSERT INTO angle (angle) VALUES (0);
INSERT INTO angle (angle) VALUES (30);
INSERT INTO angle (angle) VALUES (45);
INSERT INTO angle (angle) VALUES (60);
INSERT INTO angle (angle) VALUES (90);

-- Update the table with calculated values
UPDATE angle SET sin = ROUND((SIN(angle * 3.14 / 180)), 2);
UPDATE angle SET cos = ROUND((COS(angle * 3.14 / 180)), 2);
UPDATE angle SET tan = ROUND((TAN(angle * 3.14 / 180)), 2) WHERE angle != 90;

-- Select all values from the table
SELECT * FROM angle;

-- Update cotangent and secant values
UPDATE angle SET cot = ROUND((1 / TAN(angle * 3.14 / 180)), 2) WHERE angle != 0;
UPDATE angle SET sec = ROUND((1 / COS(angle * 3.14 / 180)), 2) WHERE angle != 90;

-- Final select to view all values
SELECT * FROM angle;