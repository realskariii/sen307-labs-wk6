USE sen307_11477;
show tables;

INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using
MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software
systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model
evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng', 7),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng', 7),
('VUA/ST/103', 'Prof Chidinma Eze', 'c.eze@vua.edu.ng', 6),
('VUA/ST/104', 'Dr Ibrahim Yusuf', 'i.yusuf@vua.edu.ng', 6),
('VUA/ST/105', 'Mrs Folake Adeyemi', 'f.adeyemi@vua.edu.ng', 9),
('VUA/ST/106', 'Dr Emeka Nwosu', 'e.nwosu@vua.edu.ng', 9),
('VUA/ST/107', 'Mr Tunde Balogun', 't.balogun@vua.edu.ng', 8),
('VUA/ST/108', 'Dr Hauwa Abdullahi', 'h.abdullahi@vua.edu.ng', 8),
('VUA/ST/109', 'Prof Ngozi Obi', 'n.obi@vua.edu.ng', 5),
('VUA/ST/110', 'Dr Samuel Ekong', 's.ekong@vua.edu.ng', 5);


INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('202411477', 'Joseph Skari', 'M', '2008-05-25', 5),
('20231235', 'John Musa', 'M', '2004-11-02', 6),
('20231236', 'Chinedu Okeke', 'M', '2005-01-22', 7),
('20231237', 'Aisha Bello', 'F', '2004-07-09', 6),
('20231238', 'Temitope Adebayo', 'F', '2005-05-30', 9),
('20231239', 'Emmanuel Udo', 'M', '2003-12-18', 5),
('20231240', 'Fatima Sani', 'F', '2004-09-25', 7),
('20231241', 'Oluwaseun Ajayi', 'M', '2005-02-11', 6),
('20231242', 'Ifeoma Nnamdi', 'F', '2004-04-03', 9),
('20231243', 'Daniel Ekanem', 'M', '2005-08-16', 5),
('20231244', 'Blessing Okonkwo', 'F', '2004-06-27', 7),
('20231245', 'Abubakar Garba', 'M', '2003-10-05', 6),
('20231246', 'Yetunde Ogunleye', 'F', '2005-03-19', 9),
('20231247', 'Chukwuemeka Obi', 'M', '2004-01-14', 5),
('20231248', 'Zainab Lawal', 'F', '2005-07-08', 7),
('20231249', 'Ebenezer Etim', 'M', '2004-12-01', 6),
('20231250', 'Ngozi Anyanwu', 'F', '2003-11-23', 9),
('20231251', 'Ibrahim Danjuma', 'M', '2005-04-12', 5),
('20231252', 'Omolara Bakare', 'F', '2004-08-29', 7),
('20231253', 'Victor Nwachukwu', 'M', '2005-09-06', 6),
('20231254', 'Halima Musa', 'F', '2004-02-17', 9),
('20231255', 'Godwin Effiong', 'M', '2005-10-21', 5);

SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;
SELECT course_id, course_code FROM Course;

INSERT INTO Enrolment (student_id, course_id) VALUES
(24, 1), (24, 2),
(25, 1), (25, 3),
(26, 1), (26, 4),
(27, 1), (27, 5),
(28, 1), (28, 6),
(29, 1), (29, 7),
(30, 2), (30, 8),
(31, 2), (31, 9),
(32, 3), (32, 10),
(33, 3), (33, 4),
(34, 4), (34, 5),
(35, 5), (35, 6),
(36, 6), (36, 7),
(37, 7), (37, 8),
(38, 8), (38, 9),
(39, 9), (39, 10),
(40, 10), (40, 1),
(41, 2), (41, 10),
(42, 3), (42, 8),
(43, 4), (43, 9);

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 11), (1, 12),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);

SELECT * FROM student;
INSERT INTO Department (dept_name) VALUES ('Library and Information Science');
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information
Science'));

-- Step 1: reassign the dependent student to another department
UPDATE Student
SET dept_id = (SELECT dept_id FROM Department

WHERE dept_name = 'Software Engineering')

WHERE matric_no = '20239999';

-- Step 2: now the delete succeeds
DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SELECT * FROM Department;

SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;