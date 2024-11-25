CREATE DATABASE fitness_center;
USE fitness_center;

CREATE TABLE Members (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (name,age)
VALUES ('Arei', 23),
('Justin',19),
('Suzy', 45),
('Jess',21);

SELECT * FROM Members;

INSERT INTO WorkoutSessions (session_id,member_id, session_date, session_time, activity)
VALUES (1,1, '2024-11-23', '9:00', 'Yoga'),
(2,3, '2024-11-26', '10:00', 'Zumba'),
(3,4, '2024-12-01', '12:00', 'Cycling'),
(4,2, '2024-11-29', '5:00', 'Boxing');

SELECT * FROM WorkoutSessions;

UPDATE WorkoutSessions 
SET session_time = '7:30'
WHERE member_id = 4;

SELECT * FROM WorkoutSessions;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Members 
WHERE name = 'Justin';

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Members;

