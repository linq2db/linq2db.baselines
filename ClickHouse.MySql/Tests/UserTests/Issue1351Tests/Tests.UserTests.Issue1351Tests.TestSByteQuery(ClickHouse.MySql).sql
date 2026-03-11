-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.TestField,
	t1.TestNullable
FROM
	T1351Model t1
WHERE
	t1.TestField = toInt8(0)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.TestField,
	t1.TestNullable
FROM
	T1351Model t1
WHERE
	toInt32(t1.TestNullable) <> 1 OR t1.TestNullable IS NULL

