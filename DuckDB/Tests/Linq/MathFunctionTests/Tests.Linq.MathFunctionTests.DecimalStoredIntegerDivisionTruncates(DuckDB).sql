-- DuckDB
SELECT
	CAST(t.X AS INTEGER) // 2
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	t.Id
FROM
	DecimalStoredIntegerTable t
WHERE
	CAST(t.X AS INTEGER) // 2 = -3
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
DECLARE $two Decimal
SET     $two = 2

SELECT
	CAST(t.X AS INTEGER) // CAST($two AS DECIMAL(10))
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	CAST(t.X + 1 AS INTEGER) // 2
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	CAST(-t.X AS INTEGER) // 2
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	CAST(Abs(t.X) AS INTEGER) // 2
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	60 // CAST(t.X AS INTEGER)
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	CAST(t.X AS INTEGER) // CAST(t.X2 AS INTEGER)
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- DuckDB
SELECT
	CAST(SUM(g_1.X) AS INTEGER) // 2
FROM
	DecimalStoredIntegerTable g_1
LIMIT 2

