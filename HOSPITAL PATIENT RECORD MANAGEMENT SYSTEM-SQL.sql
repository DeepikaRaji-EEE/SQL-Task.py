#HOSPITAL PATIENT RECORD MANAGEMENT SYSTEM

CREATE DATABASE HospitalDB;

USE HospitalDB;


-- PATIENT TABLE


CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(15),
    city VARCHAR(50),
    disease VARCHAR(100),
    admission_date DATE
);


-- DOCTOR TABLE


CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(100),
    specialization VARCHAR(100),
    experience INT,
    salary DECIMAL(10,2)
);


-- APPOINTMENTS TABLE

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(20),

    FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id),

    FOREIGN KEY (doctor_id)
    REFERENCES Doctors(doctor_id)
);

-- MEDICINES TABLE

CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_name VARCHAR(100),
    stock_quantity INT,
    price DECIMAL(10,2)
);


-- PRESCRIPTIONS TABLE

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    medicine_id INT,
    dosage VARCHAR(100),

    FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id),

    FOREIGN KEY (doctor_id)
    REFERENCES Doctors(doctor_id),

    FOREIGN KEY (medicine_id)
    REFERENCES Medicines(medicine_id)
);


-- BILLING TABLE

CREATE TABLE Bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    room_charge DECIMAL(10,2),
    medicine_charge DECIMAL(10,2),
    doctor_fee DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),

    FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id)
);


-- INSERT DATA INTO PATIENTS

INSERT INTO Patients
(patient_name, gender, age, phone, city, disease, admission_date)
VALUES
('Arun Kumar', 'Male', 25, '9876543210', 'Chennai', 'Fever', '2026-05-01'),
('Priya Sharma', 'Female', 31, '9876501234', 'Coimbatore', 'Diabetes', '2026-05-02'),
('Rahul Verma', 'Male', 40, '9988776655', 'Madurai', 'Heart Problem', '2026-05-03'),
('Sneha Iyer', 'Female', 28, '9876612345', 'Salem', 'Migraine', '2026-05-04'),
('Karthik R', 'Male', 35, '9000011111', 'Trichy', 'Asthma', '2026-05-05');


-- INSERT DATA INTO DOCTORS

INSERT INTO Doctors
(doctor_name, specialization, experience, salary)
VALUES
('Dr. Rajesh', 'Cardiologist', 12, 120000),
('Dr. Meena', 'General Physician', 8, 90000),
('Dr. Arvind', 'Neurologist', 15, 150000),
('Dr. Kavitha', 'Pulmonologist', 10, 110000);


-- INSERT DATA INTO APPOINTMENTS

INSERT INTO Appointments
(patient_id, doctor_id, appointment_date, appointment_time, status)
VALUES
(1, 2, '2026-05-10', '10:00:00', 'Completed'),
(2, 2, '2026-05-11', '11:30:00', 'Pending'),
(3, 1, '2026-05-12', '09:00:00', 'Completed'),
(4, 3, '2026-05-13', '02:00:00', 'Completed'),
(5, 4, '2026-05-14', '04:00:00', 'Pending');

-- INSERT DATA INTO MEDICINES

INSERT INTO Medicines
(medicine_name, stock_quantity, price)
VALUES
('Paracetamol', 200, 5.50),
('Insulin', 100, 250.00),
('Aspirin', 150, 8.00),
('Inhaler', 75, 350.00);

-- INSERT DATA INTO PRESCRIPTIONS

INSERT INTO Prescriptions
(patient_id, doctor_id, medicine_id, dosage)
VALUES
(1, 2, 1, '2 Times Daily'),
(2, 2, 2, '1 Injection Daily'),
(3, 1, 3, '1 Tablet Daily'),
(5, 4, 4, 'Use During Breathing Difficulty');

-- INSERT DATA INTO BILLS

INSERT INTO Bills
(patient_id, room_charge, medicine_charge, doctor_fee, total_amount, payment_status)
VALUES
(1, 1000, 200, 500, 1700, 'Paid'),
(2, 2000, 800, 700, 3500, 'Pending'),
(3, 3000, 500, 1000, 4500, 'Paid'),
(4, 1500, 300, 600, 2400, 'Paid'),
(5, 2500, 900, 800, 4200, 'Pending');

-- SELECT QUERIES

-- View All Patients
SELECT * FROM Patients;

-- View Doctors
SELECT * FROM Doctors;

-- Appointment Details
SELECT
    p.patient_name,
    d.doctor_name,
    d.specialization,
    a.appointment_date,
    a.status
FROM Appointments a
JOIN Patients p
ON a.patient_id = p.patient_id
JOIN Doctors d
ON a.doctor_id = d.doctor_id;

-- Bill Report
SELECT
    p.patient_name,
    b.total_amount,
    b.payment_status
FROM Bills b
JOIN Patients p
ON b.patient_id = p.patient_id;

-- Medicine Stock
SELECT * FROM Medicines;

-- UPDATE QUERY

UPDATE Bills
SET payment_status = 'Paid'
WHERE bill_id = 5;

-- DELETE QUERY

DELETE FROM Medicines
WHERE medicine_id = 3;

-- VIEW CREATION

CREATE VIEW Patient_Report AS
SELECT
    p.patient_name,
    p.disease,
    d.doctor_name,
    a.appointment_date
FROM Patients p
JOIN Appointments a
ON p.patient_id = a.patient_id
JOIN Doctors d
ON a.doctor_id = d.doctor_id;

-- DISPLAY VIEW

SELECT * FROM Patient_Report;

-- AGGREGATE FUNCTIONS

-- Total Patients
SELECT COUNT(*) AS Total_Patients
FROM Patients;

-- Average Doctor Salary
SELECT AVG(salary) AS Average_Salary
FROM Doctors;

-- Maximum Bill Amount
SELECT MAX(total_amount) AS Highest_Bill
FROM Bills;