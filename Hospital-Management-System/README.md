# Hospital Management System

## Overview
Database for managing patients, doctors, appointments, and treatments in a hospital.

## Database Schema
- Patients(PatientID, FirstName, LastName, DOB, Gender, Phone)
- Doctors(DoctorID, FirstName, LastName, Specialization, Phone)
- Appointments(AppointmentID, PatientID, DoctorID, AppointmentDate, Diagnosis)
- Treatments(TreatmentID, AppointmentID, Medicine, Cost)

## Setup
1. Run `schema.sql` to create tables.
2. Run `queries.sql` to insert sample data and test queries.

## Sample Queries
- Retrieve all appointments with doctor and patient details.
- Calculate total treatment costs per patient.