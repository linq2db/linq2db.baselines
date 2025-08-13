BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.TestField,
	t1.TestNullable
FROM
	T1351Model t1
WHERE
	t1.TestField = toInt8(0)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.TestField,
	t1.TestNullable
FROM
	T1351Model t1
WHERE
	t1.TestNullable <> toInt8(1) OR t1.TestNullable IS NULL

