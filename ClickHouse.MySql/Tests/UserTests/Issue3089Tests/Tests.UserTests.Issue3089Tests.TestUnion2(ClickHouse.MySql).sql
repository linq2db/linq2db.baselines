-- ClickHouse.MySql ClickHouse

SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x
UNION DISTINCT
SELECT
	x_1.Time as Time_1
FROM
	TableTime x_1
UNION DISTINCT
SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x_2
UNION DISTINCT
SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x_3

