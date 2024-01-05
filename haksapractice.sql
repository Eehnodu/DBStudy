INSERT INTO department (department_name) VALUES
('컴퓨터공학과'),
('국어국문과'),
('정보통신과'),
('전자공학과');

INSERT INTO Student (student_name, student_height, department_code) VALUES
('가길동', 170.5, 1),
('나길동', 165.2, 1),
('다길동', 180.0, 2),
('라길동', 175.8, 3),
('마길동', 160.7, 4),
('바길동', 168.3, 1),
('사길동', 172.1, 2),
('아길동', 175.0, 1);

INSERT INTO Professor (professor_name, department_code) VALUES
('가 교수', 1),
('나 교수', 1),
('다 교수', 2),
('빌 게이츠', 3),
('스티브 잡스', 4);

INSERT INTO Course (course_name, professor_code, start_date, end_date) VALUES
('교양 영어', 1, '2023-07-01', '2023-08-15'),
('데이터베이스 입문', 2, '2023-07-01', '2023-08-31'),
('회로이론', 3, '2023-07-15', '2023-09-15'),
('공학수학', 4, '2023-07-15', '2023-09-30'),
('객체지향 프로그래밍', 5, '2023-07-01', '2023-08-31');

INSERT INTO Student_Course (student_id, course_code) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 5);

SELECT t.student_name, d.department_name
FROM student t
left join department d
on t.department_code = d.department_code;

SELECT d.department_name, COUNT(s.department_code) AS 'cnt'
FROM department d
INNER JOIN student s
on d.department_code = s.department_code
GROUP BY s.department_code
HAVING cnt>=2;

SELECT s.student_name, d.department_name
FROM student s
INNER JOIN department d
ON	s.department_code = d.department_code 
WHERE d.department_name='국어국문과';

SELECT s.student_name, d.department_name
FROM student s
INNER JOIN department d
ON	s.department_code = d.department_code 
WHERE s.student_name LIKE '%길%';

SELECT *
FROM student s
WHERE student_height BETWEEN 170 AND 180
ORDER BY student_height DESC;

SELECT *
FROM student s
ORDER BY student_height DESC
LIMIT 1;