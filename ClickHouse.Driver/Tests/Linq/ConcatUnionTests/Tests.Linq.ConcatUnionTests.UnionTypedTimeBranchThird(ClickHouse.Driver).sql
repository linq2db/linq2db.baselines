-- ClickHouse.Driver ClickHouse
SELECT
	NULL as Time_1
FROM
	UnionNullTimeRow x
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	UnionNullTimeRow x_1
UNION DISTINCT
SELECT
	x_2.Time as Time_1
FROM
	UnionNullTimeRow x_2
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	UnionNullTimeRow x_3

