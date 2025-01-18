BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	NULL as Time_1
FROM
	TableTime x
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	TableTime x_1
UNION DISTINCT
SELECT
	x_2.Time as Time_1
FROM
	TableTime x_2
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	TableTime x_3

