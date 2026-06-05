-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Grp,
	t1.Value
FROM
	NullsTable t1
ORDER BY
	t1.Value NULLS FIRST,
	t1.Id
LIMIT 3

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Grp,
	t1.Value
FROM
	NullsTable t1

