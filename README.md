# SQL Trigonometric Functions

This repository contains SQL operations for calculating trigonometric functions (sine, cosine, tangent, cotangent, and secant) for various angles. The operations are performed on a table named `angle`, which stores the angle values along with their corresponding trigonometric function values.

## Table of Contents

- [Introduction](#introduction)
- [SQL Operations](#sql-operations)
- [How to Run SQL Scripts](#how-to-run-sql-scripts)
- [Example SQL Script](#example-sql-script)

## Introduction

This project demonstrates how to create a table in SQL, insert angle values, and calculate their trigonometric functions using built-in SQL functions. The results are stored in the same table for easy retrieval and analysis.

## SQL Operations

The following SQL operations are included in this repository:

1. **Create Table**: Creates a table named `angle` with columns for angle and its trigonometric functions.
2. **Insert Values**: Inserts angle values (0, 30, 45, 60, 90 degrees) into the table.
3. **Calculate Trigonometric Functions**:
   - **Sine**: Calculates the sine of the angle.
   - **Cosine**: Calculates the cosine of the angle.
   - **Tangent**: Calculates the tangent of the angle (excluding 90 degrees).
   - **Cotangent**: Calculates the cotangent of the angle (excluding 0 degrees).
   - **Secant**: Calculates the secant of the angle (excluding 90 degrees).
4. **Select Statement**: Retrieves all values from the `angle` table.


## How to Run SQL Scripts

1. **Create a README File**: In your repository, create a new file named `README.md`.

2. **Copy and Paste**: Copy the above content and paste it into your `README.md` file.

3. **Customize**: Modify any sections as needed to better fit your project or personal style.

4. **Commit Changes**: Save the file, and then commit the changes to your GitHub repository.

### Example SQL Script

Here’s a brief overview of the SQL script included in this repository:

```sql
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

-- Final select to view all values
SELECT * FROM angle;
