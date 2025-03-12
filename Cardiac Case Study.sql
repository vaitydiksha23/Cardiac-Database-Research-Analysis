SELECT *
FROM CaseStudy;

--checking data types
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CaseStudy';

--Duplicating the table for data cleaning

SELECT * INTO data
FROM CaseStudy;


SELECT *
FROM data

--checking for duplicate ids
SELECT id, COUNT(id)
FROM data
GROUP BY id
HAVING COUNT(id) > 1

--checking the duplicate ids
SELECT *
FROM data
WHERE id ='904'

--checking distinct values of sex
SELECT DISTINCT sex, COUNT(sex)
FROM data
GROUP BY sex

SELECT *
FROM data
WHERE NOT (sex='Male' OR sex='Female')

/*
DELETE FROM data
WHERE NOT (sex='Male' OR sex='Female')
*/

--checking distinct values of dataset
SELECT DISTINCT dataset, COUNT(dataset)
FROM data
GROUP BY dataset

SELECT *
FROM data
WHERE dataset LIKE 'Please%' 
--deleting id no. 45
/*
DELETE FROM data 
WHERE dataset LIKE 'Please%'
*/

--checking for systolic BP values <0
SELECT systbps, COUNT(id)
FROM data
WHERE systbps <= 0 
GROUP BY systbps

SELECT *
FROM data
WHERE systbps <= 0 

/*
DELETE FROM data
WHERE  systbps <= 0 
*/

SELECT DISTINCT maxhr, COUNT(maxhr)
FROM data
GROUP BY maxhr
ORDER BY maxhr DESC

SELECT *
FROM data
WHERE maxhr <= 0 OR maxhr = 600

/*
DELETE FROM data
WHERE  maxhr = 600 
*/

-- checking negative values
SELECT oldpeak, COUNT(oldpeak)
FROM data
WHERE oldpeak < 0
GROUP BY oldpeak

/*
DELETE FROM data
WHERE oldpeak < 0
*/

SELECT COUNT(id)
FROM data