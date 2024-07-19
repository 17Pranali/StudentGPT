
use college;
-- Create Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    fees DECIMAL(10, 2),
    remaining_fees DECIMAL(10, 2),
    current_year INT
);

-- Insert sample data into Student table
INSERT INTO Student (student_id, student_name, fees, remaining_fees, current_year) VALUES
(1, 'John Doe', 1500.00, 500.00, 2),
(2, 'Jane Smith', 1800.00, 1000.00, 1),
(3, 'Alice Johnson', 2000.00, 200.00, 3),
(4, 'Bob Brown', 1700.00, 1700.00, 1),
(5, 'Emma Davis', 1600.00, 600.00, 2),
(6, 'Michael Wilson', 1900.00, 300.00, 3),
(7, 'Sarah Garcia', 1750.00, 800.00, 2),
(8, 'David Martinez', 1950.00, 1000.00, 3),
(9, 'Emily Rodriguez', 2100.00, 400.00, 1),
(10, 'Daniel Hernandez', 1850.00, 150.00, 2),
(11, 'Olivia Lopez', 2200.00, 2200.00, 3),
(12, 'Matthew Gonzalez', 1650.00, 900.00, 1),
(13, 'Sophia Perez', 2300.00, 300.00, 2),
(14, 'James Turner', 2000.00, 700.00, 3),
(15, 'Emma Phillips', 1750.00, 500.00, 2),
(16, 'William Harris', 1950.00, 800.00, 1),
(17, 'Isabella King', 1800.00, 1200.00, 3),
(18, 'Daniel Evans', 2100.00, 600.00, 1),
(19, 'Chloe Baker', 1900.00, 1000.00, 2),
(20, 'Alexander Allen', 1700.00, 200.00, 3);

-- Create Faculty table
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(50),
    position VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert sample data into Faculty table
INSERT INTO Faculty (faculty_id, faculty_name, position, department, salary) VALUES
(101, 'Dr. Smith', 'Professor', 'Computer Science', 7000.00),
(102, 'Dr. Johnson', 'Associate Professor', 'Mathematics', 6000.00),
(103, 'Prof. Brown', 'Assistant Professor', 'Physics', 5500.00),
(104, 'Prof. Wilson', 'Professor', 'Chemistry', 7200.00),
(105, 'Dr. Garcia', 'Associate Professor', 'Biology', 6500.00),
(106, 'Prof. Martinez', 'Professor', 'Engineering', 7300.00),
(107, 'Dr. Rodriguez', 'Assistant Professor', 'Psychology', 5800.00),
(108, 'Prof. Hernandez', 'Professor', 'Sociology', 7100.00),
(109, 'Dr. Lopez', 'Associate Professor', 'Economics', 6400.00),
(110, 'Prof. Gonzalez', 'Professor', 'History', 6900.00),
(111, 'Dr. Perez', 'Assistant Professor', 'English', 5700.00),
(112, 'Prof. Turner', 'Professor', 'Political Science', 7400.00),
(113, 'Dr. Phillips', 'Associate Professor', 'Geography', 6300.00),
(114, 'Prof. Harris', 'Professor', 'Art', 6800.00),
(115, 'Dr. King', 'Assistant Professor', 'Music', 5900.00),
(116, 'Prof. Evans', 'Professor', 'Philosophy', 7000.00),
(117, 'Dr. Baker', 'Associate Professor', 'Foreign Languages', 6600.00),
(118, 'Prof. Allen', 'Professor', 'Physical Education', 7100.00),
(119, 'Dr. Scott', 'Assistant Professor', 'Environmental Science', 6000.00),
(120, 'Prof. Green', 'Professor', 'Business Administration', 7200.00);

-- Create Course table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50),
    credits INT
);

-- Insert sample data into Course table
INSERT INTO Course (course_id, course_name, department, credits) VALUES
(1, 'Introduction to Computer Science', 'Computer Science', 3),
(2, 'Calculus I', 'Mathematics', 4),
(3, 'General Physics', 'Physics', 4),
(4, 'Organic Chemistry', 'Chemistry', 4),
(5, 'Biology Basics', 'Biology', 3),
(6, 'Engineering Mechanics', 'Engineering', 4),
(7, 'Introduction to Psychology', 'Psychology', 3),
(8, 'Microeconomics', 'Economics', 3),
(9, 'World History', 'History', 3),
(10, 'English Composition', 'English', 3),
(11, 'Political Systems', 'Political Science', 3),
(12, 'Physical Geography', 'Geography', 3),
(13, 'Art Appreciation', 'Art', 3),
(14, 'Music Fundamentals', 'Music', 3),
(15, 'Philosophy 101', 'Philosophy', 3),
(16, 'French I', 'Foreign Languages', 4),
(17, 'Basketball', 'Physical Education', 2),
(18, 'Environmental Issues', 'Environmental Science', 3),
(19, 'Business Ethics', 'Business Administration', 3),
(20, 'Data Structures', 'Computer Science', 4);

-- Create Enrollment table
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    faculty_id INT,
    semester VARCHAR(20),
    year INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

-- Insert sample data into Enrollment table
INSERT INTO Enrollment (enrollment_id, student_id, course_id, faculty_id, semester, year) VALUES
(1, 1, 1, 101, 'Spring', 2023),
(2, 2, 2, 102, 'Fall', 2022),
(3, 3, 3, 103, 'Spring', 2023),
(4, 4, 4, 104, 'Fall', 2022),
(5, 5, 5, 105, 'Spring', 2023),
(6, 6, 6, 106, 'Fall', 2022),
(7, 7, 7, 107, 'Spring', 2023),
(8, 8, 8, 108, 'Fall', 2022),
(9, 9, 9, 109, 'Spring', 2023),
(10, 10, 10, 110, 'Fall', 2022),
(11, 11, 11, 111, 'Spring', 2023),
(12, 12, 12, 112, 'Fall', 2022),
(13, 13, 13, 113, 'Spring', 2023),
(14, 14, 14, 114, 'Fall', 2022),
(15, 15, 15, 115, 'Spring', 2023),
(16, 16, 16, 116, 'Fall', 2022),
(17, 17, 17, 117, 'Spring', 2023),
(18, 18, 18, 118, 'Fall', 2022),
(19, 19, 19, 119, 'Spring', 2023),
(20, 20, 20, 120, 'Fall', 2022);
