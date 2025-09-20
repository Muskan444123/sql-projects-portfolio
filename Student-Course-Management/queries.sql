-- Insert Sample Data
INSERT INTO Students VALUES (1, 'Muskan', 'Mittal', '2002-09-20', 'muskan@example.com');
INSERT INTO Students VALUES (2, 'Rahul', 'Verma', '2001-05-10', 'rahul@example.com');

INSERT INTO Courses VALUES (101, 'Database Systems', 4);
INSERT INTO Courses VALUES (102, 'Data Science', 3);

INSERT INTO Enrollment VALUES (1001, 1, 101, 'A');
INSERT INTO Enrollment VALUES (1002, 1, 102, 'B');
INSERT INTO Enrollment VALUES (1003, 2, 101, 'B');

-- Sample Queries
SELECT s.FirstName, s.LastName, c.CourseName, e.Grade
FROM Students s
JOIN Enrollment e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

SELECT c.CourseName, COUNT(e.StudentID) AS TotalStudents
FROM Courses c
LEFT JOIN Enrollment e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;