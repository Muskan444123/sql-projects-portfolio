# Student Course Management System

## Overview
A relational database to manage student information, courses, and enrollments.

## Database Schema
- Students(StudentID, FirstName, LastName, DOB, Email)
- Courses(CourseID, CourseName, Credits)
- Enrollment(EnrollmentID, StudentID, CourseID, Grade)

## Setup
1. Run `schema.sql` to create tables.
2. Run `queries.sql` to insert sample data and test queries.

## Sample Queries
- Retrieve all students and their courses with grades.
- Count the number of students enrolled in each course.