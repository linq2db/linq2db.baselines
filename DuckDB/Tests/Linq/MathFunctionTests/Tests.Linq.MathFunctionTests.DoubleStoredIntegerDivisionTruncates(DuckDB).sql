-- DuckDB
SELECT
	CAST(t.D AS INTEGER) // 2
FROM
	DoubleStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.D
FROM
	DoubleStoredIntegerTable t1

-- DuckDB
SELECT
	t.Id
FROM
	DoubleStoredIntegerTable t
WHERE
	CAST(t.D AS INTEGER) // 2 = -3
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.D
FROM
	DoubleStoredIntegerTable t1

