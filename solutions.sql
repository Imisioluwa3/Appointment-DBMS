CREATE DATABASE Hospital;

-- Step 1: Create the Doctor table
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(100) NOT NULL,               
    specialization VARCHAR(100),
    phone_number VARCHAR(15) UNIQUE
);

-- Step 2: Create the Patient table
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    phone_number VARCHAR(15) UNIQUE
);

-- Step 3: Create the Appointment table
-- This table stores information about appointments between doctors and patients.
-- It establishes a many-to-many relationship between doctors and patients.
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason VARCHAR(255),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id) ON DELETE CASCADE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id) ON DELETE CASCADE
);

-- Step 4: Add additional constraints or indexes if needed
-- For example, ensure that a doctor cannot have two appointments with the same patient at the same time.
ALTER TABLE Appointment
ADD CONSTRAINT unique_appointment UNIQUE (doctor_id, patient_id, appointment_date);

-- Explanation:
-- 1. The Doctor table has a primary key (doctor_id) and a UNIQUE constraint on the phone_number.
-- 2. The Patient table has a primary key (patient_id) and a UNIQUE constraint on the phone_number.
-- 3. The Appointment table establishes a many-to-many relationship between doctors and patients.
--    It uses foreign keys (doctor_id and patient_id) to reference the Doctor and Patient tables.
-- 4. The unique_appointment constraint ensures no duplicate appointments for the same doctor and patient at the same time.