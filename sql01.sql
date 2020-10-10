USE db_1;
CREATE TABLE `member`(
m_id INT PRIMARY KEY AUTO_INCREMENT,
m_FN VARCHAR(100),
m_LN VARCHAR(100),
m_birth DATETIME,
m_info VARCHAR(255) NULL
);
INSERT INTO `member`(m_id,m_FN,m_LN,m_birth,m_info) VALUE(NULL,'Halen','Park','1970-06-29','GoodMan');
SELECT LENGTH(m_FN),CONCAT(m_FN,m_LN),LOWER(m_info),REVERSE(m_info) FROM `member`;
SELECT YEAR(CURDATE())-YEAR(m_birth) AS age,DAYOFYEAR(m_birth) AS `day`,DATE_FORMAT(m_birth,'%W %D %M %Y') AS birthDay FROM `member`;
INSERT INTO `member`(m_id,m_FN,m_LN,m_birth,m_info) VALUE(NULL,'Samuel','Green',NOW(),NULL);
SELECT LAST_INSERT_ID();
SELECT m_birth,CASE WHEN YEAR(m_birth)<2000 THEN 'old' WHEN YEAR(m_birth)>2000 THEN 'young' ELSE 'not born' END AS `status` FROM `member`;
SELECT 18/5,18 MOD 5;
SELECT DEGREES(PI()/4);
SELECT POWER(9,4);
SELECT TRUNCATE(3.14159,2);
SELECT LENGTH('HelloWorld!'),LENGTH('University');
SELECT SUBSTRING("Nice to meet you",9,4);
SELECT REPEAT('Cheer!',3);
SELECT REVERSE('voodoo');