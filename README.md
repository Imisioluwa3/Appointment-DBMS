# Appointment-DBMS
# Doctor-Patient Appointment Management System

## Description
This project is a database schema designed to manage a doctor-patient appointment system. It includes three main tables: `Doctor`, `Patient`, and `Appointment`. The schema allows for the storage and management of doctor and patient information, as well as the scheduling of appointments between them. Key features include:
- Unique constraints on phone numbers for both doctors and patients.
- A many-to-many relationship between doctors and patients through the `Appointment` table.
- A constraint to prevent duplicate appointments for the same doctor and patient at the same time.

## How to Run/Setup the Project
To set up and use the database schema, follow these steps:

1. **Install a Database Management System (DBMS):**
   Ensure you have a DBMS like MySQL installed on your system.

2. **Open Your DBMS Client:**
   Use a client like MySQL Workbench, phpMyAdmin, or a terminal-based MySQL client.

3. **Import the SQL File:**
   - Open the `solutions.sql` file in your DBMS client.
   - Execute the SQL script to create the `Doctor`, `Patient`, and `Appointment` tables, along with their constraints.

4. **Verify the Setup:**
   - Check that the tables have been created successfully.
   - Ensure the constraints (e.g., primary keys, foreign keys, and unique constraints) are in place.

5. **Start Using the Database:**
   - Insert data into the `Doctor` and `Patient` tables.
   - Schedule appointments by inserting data into the `Appointment` table.

## Notes
- The `ON DELETE CASCADE` constraint ensures that when a doctor or patient is deleted, their associated appointments are also removed.
- The `unique_appointment` constraint ensures no duplicate appointments for the same doctor and patient at the same time.

Feel free to modify the schema to suit your specific requirements.