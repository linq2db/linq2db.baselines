-- ClickHouse.MySql ClickHouse
SELECT
	toDateTime(NULL) as Time_1
FROM
	UnionNullTimeRow x
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	UnionNullTimeRow x_1
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	UnionNullTimeRow x_2
UNION DISTINCT
SELECT
	x_3.Time as Time_1
FROM
	UnionNullTimeRow x_3

