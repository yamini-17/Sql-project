CREATE DATABASE Practise2;
USE Practise2;

SELECT * FROM practise2.`studentperformancefactors.xlxs`;

CREATE TABLE STUDENT2(
STUDENT_ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(50),
Gender VARCHAR(10),
PARENTAL_EDUCATIONAL_LEVEL VARCHAR(15),
DISTANCE_FROM_HOME VARCHAR(15) )

INSERT INTO STUDENT2(STUDENT_ID,NAME,Gender,PARENTAL_EDUCATIONAL_LEVEL,DISTANCE_FROM_HOME)
VALUES
(1,'John','Male','High School','Near'),
(2,'Julie','Female','College',	'Moderate'),
(3,'Merry','Male','Postgraduate','Near'),
(4,'kavi','Male','High School','Moderate'),
(5,'Kani','Male','College',	'Near'),
(6,'Thogai','Male',	'Postgraduate','Near'),
(7,'valli','Male','High School','Moderate'),
(8,'Rio','Male','High School','Far'),
(9,'Ravi','Male','College','Near'),
(10,'Shalini','Male','High School','Moderate'),
(11,'Pavi','Male','College','Moderate'),
(12,'Devi','Male','High School','Near'),
(13,'Varsh','Male',	'High School','Near'),
(14,'Ashya','Male',	'Postgraduate','Near'),
(15,'Jeevi','Male','Postgraduate','Near');
SELECT * FROM STUDENT2

SELECT * FROM practise2.`studentperformancefactors.xlxs` WHERE Exam_Score > 65

SELECT STUDENT_ID,NAME FROM STUDENT2 WHERE DISTANCE_FROM_HOME = 'NEAR';

SELECT * FROM practise2.`studentperformancefactors.xlxs` WHERE ATTENDANCE > 75;

SELECT * FROM practise2.`studentperformancefactors.xlxs` WHERE School_Type = 'private';

SELECT * FROM STUDENT1 ORDER BY NAME ASC;

INSERT INTO STUDENT1(STUDENT_ID,NAME,GENDER,PARENTAL_EDUCATIONAL_LEVEL,DISTANCE_FROM_HOME) VALUES (17,'Yamini','Female','High School','Far')

SELECT * FROM STUDENT2;

UPDATE STUDENT2
SET DISTANCE_FROM_HOME = 'Near'
WHERE STUDENT_ID = 16;

SELECT * FROM STUDENT2;

DELETE FROM STUDENT2
WHERE STUDENT_ID = 16;

SELECT * FROM STUDENT2;

SELECT COUNT(*) AS TOTALSTUDENTS FROM STUDENT2;

SELECT COUNT(*) AS TOTALSTUDENTS FROM practise2.`studentperformancefactors.xlxs`;

SELECT MAX(Exam_Score) AS MAXIMUMSCORE FROM practise2.`studentperformancefactors.xlxs`;

SELECT MIN(Exam_Score) AS MINIMUMSCORE FROM practise2.`studentperformancefactors.xlxs`;

SELECT AVG(Sleep_Hours) AS AVERAGESLEEPHOURS FROM practise2.`studentperformancefactors.xlxs`;

SELECT SUM(Tutoring_Sessions) AS TOTALTUTORINGSESSIONS FROM practise2.`studentperformancefactors.xlxs`;

SELECT Gender, COUNT(*) AS  TOTALSTUDENTS FROM practise2.`studentperformancefactors.xlxs`
GROUP BY Gender;

SELECT Learning_Disabilities, COUNT(*) AS TOTALSTUDENTS FROM practise2.`studentperformancefactors.xlxs`
GROUP BY  Learning_Disabilities;

SELECT Motivation_Level,Internet_Access, COUNT(*) AS TOTALSTUDENTS FROM practise2.`studentperformancefactors.xlxs`
GROUP BY Motivation_Level,Internet_Access;

SELECT practise2.`studentperformancefactors.xlxs`.Attendance , STUDENT2.STUDENT_ID 
FROM practise2.`studentperformancefactors.xlxs` 
INNER JOIN STUDENT2  ON
practise2.`studentperformancefactors.xlxs`.Gender = STUDENT2.Gender;

SELECT practise2.`studentperformancefactors.xlxs`.School_Type,STUDENT2.STUDENT_ID 
FROM practise2.`studentperformancefactors.xlxs` 
LEFT JOIN STUDENT2 ON
practise2.`studentperformancefactors.xlxs`.Gender = STUDENT2.Gender;

SELECT STUDENT2.PARENTAL_EDUCATIONAL_LEVEL,practise2.`studentperformancefactors.xlxs`.Gender 
FROM STUDENT2
RIGHT JOIN practise2.`studentperformancefactors.xlxs` ON
STUDENT2.Gender = practise2.`studentperformancefactors.xlxs`.Gender 

SELECT Exam_Score,Gender
FROM practise2.`studentperformancefactors.xlxs`
WHERE Exam_Score > 65;

SELECT NAME,Gender 
FROM STUDENT2
WHERE DISTANCE_FROM_HOME = 'FAR';

SELECT Peer_Influence
FROM practise2.`studentperformancefactors.xlxs`
WHERE (SELECT COUNT(Gender) AS TOTALSTUDENTS FROM practise2.`studentperformancefactors.xlxs`);

SELECT 
    Gender,
    Exam_score,
    CASE 
        WHEN Exam_score >= 90 THEN 'High'
        WHEN Exam_score >= 70 AND Exam_score < 90 THEN 'Medium'
        ELSE 'Low'
    END AS MARKCategory
FROM practise2.`studentperformancefactors`;

