SELECT * FROM dataset_1;

SELECT weather, temperature
FROM dataset_1;

SELECT * 
FROM dataset_1 LIMIT 10;

SELECT DISTINCT passanger 
FROM dataset_1;

SELECT 
destination,
passanger,
time AS 'The Time'
FROM dataset_1
WHERE passanger ='Alone'
OR time = '2PM'
ORDER BY time DESC;

SELECT destination, time,
AVG(temperature),
SUM(temperature),
COUNT(temperature),
COUNT(DISTINCT temperature)
FROM dataset_1 d
WHERE time <> '10PM'
GROUP BY destination, time
-- HAVING occupation = 'student'
ORDER BY time;

SELECT *
FROM dataset_1 
UNION
SELECT *
FROM table_to_union;

SELECT DISTINCT destination
FROM dataset_1 d;

SELECT DISTINCT destination 
FROM dataset_1 
UNION ALL
SELECT DISTINCT destination
FROM table_to_union;
¸
SELECT DISTINCT destination 
FROM
(
SELECT * FROM dataset_1 
UNION
SELECT * FROM table_to_union);

SELECT DISTINCT time
FROM dataset_1 d;

SELECT d.destination, d.time, ttj.part_of_day
FROM dataset_1 d 
LEFT JOIN table_to_join ttj
ON d.time = ttj.time;

SELECT DISTINCT time 
FROM dataset_1 d 
WHERE time LIKE '%PM';

SELECT DISTINCT temperature  
FROM dataset_1 d 
WHERE temperature  BETWEEN 29 AND 75;

SELECT occupation
FROM dataset_1
WHERE occupation IN ('Sales & Related', 'Management');

SELECT 
	destination,
	weather,
	AVG(temperature) OVER (PARTITION BY weather) AS 'avg_temp_by'
FROM dataset_1;	

SELECT 
	destination, 
	weather, 
	ROW_NUMBER() OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1;

SELECT 
	destination, 
	weather, 
	RANK() OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1;

SELECT 
destination, 
weather, 
DENSE_RANK() OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1;


SELECT destination, time, row_count
FROM dataset_1
ORDER BY row_count DESC;

SELECT destination, time, LAG(row_count , 1, '99999') OVER (ORDER BY row_count) AS 'LaggedCount' 
FROM dataset_1;

SELECT destination, time, LEAD(row_count , 1, '99999') OVER (ORDER BY row_count) AS 'LaggedCount' 
FROM dataset_1;















