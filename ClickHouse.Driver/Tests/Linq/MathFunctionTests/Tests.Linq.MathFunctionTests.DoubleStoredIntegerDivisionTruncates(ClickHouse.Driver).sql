-- ClickHouse.Driver ClickHouse
SELECT
	intDiv(toInt32(t.D), 2)
FROM
	DoubleStoredIntegerTable t
ORDER BY
	t.Id

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.D
FROM
	DoubleStoredIntegerTable t1

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id
FROM
	DoubleStoredIntegerTable t
WHERE
	intDiv(toInt32(t.D), 2) = -3
ORDER BY
	t.Id

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.D
FROM
	DoubleStoredIntegerTable t1

