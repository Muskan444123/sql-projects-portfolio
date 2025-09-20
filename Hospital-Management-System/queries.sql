-- Insert Sample Data
INSERT INTO Patients VALUES (1, 'Muskan', 'Mittal', '2002-09-20', 'F', '9876543210');
INSERT INTO Doctors VALUES (101, 'Dr. Arjun', 'Sharma', 'Cardiology', '9123456789');
INSERT INTO Appointments VALUES (5001, 1, 101, '2025-09-20', 'Chest Pain');
INSERT INTO Treatments VALUES (7001, 5001, 'Aspirin', 250.00);

-- Sample Queries
SELECT a.AppointmentID, p.FirstName AS Patient, d.FirstName AS Doctor,
       d.Specialization, a.AppointmentDate, a.Diagnosis
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;

SELECT p.FirstName, p.LastName, SUM(t.Cost) AS TotalSpent
FROM Patients p
JOIN Appointments a ON p.PatientID = a.PatientID
JOIN Treatments t ON a.AppointmentID = t.AppointmentID
GROUP BY p.FirstName, p.LastName;