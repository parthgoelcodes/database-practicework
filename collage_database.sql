CREATE DATABASE jmmiitt;
USE jmmiitt;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    department_id INT,
    admission_year INT
);

INSERT INTO Students
VALUES
(101, 'Rahul', 19, 'Male', 'Delhi', 1, 2025),
(102, 'Priya', 20, 'Female', 'Jaipur', 5, 2025),
(103, 'Aman', 18, 'Male', 'Lucknow', 1, 2025);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    hod_name VARCHAR(50)
);

INSERT INTO Departments
VALUES
(1, 'Computer Science', 'Dr. Sharma'),
(2, 'Mechanical', 'Dr. Verma'),
(3, 'Electrical', 'Dr. Singh'),
(4, 'Civil', 'Dr. Khan'),
(5, 'AI & DS', 'Dr. Gupta');

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    department_id INT
);

INSERT INTO Courses
VALUES
(101, 'Database Management System', 4, 1),
(102, 'Python Programming', 3, 1),
(103, 'Data Structures', 4, 1),
(104, 'Machine Design', 4, 2),
(105, 'Thermodynamics', 3, 2),
(106, 'Circuit Analysis', 4, 3),
(107, 'Power Systems', 3, 3),
(108, 'Surveying', 3, 4),
(109, 'Concrete Technology', 4, 4),
(110, 'Artificial Intelligence', 4, 5);


CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    semester INT
);


INSERT INTO Enrollments
VALUES
(1, 101, 101, 88, 1),
(2, 101, 102, 91, 1),
(3, 102, 101, 76, 1),
(4, 102, 110, 89, 1),
(5, 103, 103, 82, 1),
(6, 103, 102, 78, 1),
(7, 104, 104, 69, 1),
(8, 105, 105, 73, 1),
(9, 106, 106, 85, 1),
(10, 107, 107, 92, 1),
(11, 108, 108, 67, 1),
(12, 109, 109, 80, 1),
(13, 110, 110, 95, 1),
(14, 111, 101, 72, 2),
(15, 112, 102, 87, 2),
(16, 113, 103, 79, 2),
(17, 114, 104, 84, 2),
(18, 115, 105, 90, 2),
(19, 116, 106, 77, 2),
(20, 117, 107, 81, 2),
(21, 118, 108, 74, 2),
(22, 119, 109, 86, 2),
(23, 120, 110, 93, 2),
(24, 104, 101, 88, 2),
(25, 105, 102, 79, 2),
(26, 106, 103, 91, 2),
(27, 107, 104, 68, 2),
(28, 108, 105, 83, 2),
(29, 109, 106, 89, 2),
(30, 110, 107, 94, 2);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    department_id INT,
    salary INT
);

INSERT INTO Teachers
VALUES
(1, 'Amit Sharma', 1, 85000),
(2, 'Neha Gupta', 1, 90000),
(3, 'Rohit Verma', 2, 78000),
(4, 'Karan Singh', 2, 82000),
(5, 'Pooja Mehta', 3, 88000),
(6, 'Anil Kumar', 3, 76000),
(7, 'Farhan Ali', 4, 81000),
(8, 'Sneha Joshi', 4, 87000),
(9, 'Vikas Yadav', 5, 95000),
(10, 'Ritika Kapoor', 5, 92000);

SELECT course_id,AVG(marks)
FROM enrollments
GROUP BY course_id;
 
