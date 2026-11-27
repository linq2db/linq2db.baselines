-- YDB Ydb
SELECT
	Unwrap(CAST(t.X AS Int32)) / 2 as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	t.Id as Id
FROM
	DecimalStoredIntegerTable t
WHERE
	Unwrap(CAST(t.X AS Int32)) / 2 = -3
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
DECLARE two Decimal(10, 0)
SET     two = Decimal('2', 22, 9)

SELECT
	Unwrap(CAST(t.X AS Int32)) / Unwrap(CAST($two AS Int32)) as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	Unwrap(CAST(t.X + Decimal('1', 10, 0) AS Int32)) / 2 as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	Unwrap(CAST(-t.X AS Int32)) / 2 as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	Unwrap(CAST(Abs(t.X) AS Int32)) / 2 as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	60 / Unwrap(CAST(t.X AS Int32)) as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	Unwrap(CAST(t.X AS Int32)) / Unwrap(CAST(t.X2 AS Int32)) as c1
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.X as X,
	t1.X2 as X2
FROM
	DecimalStoredIntegerTable t1

-- YDB Ydb
SELECT
	CAST(SUM(g_1.X) AS Int32) / 2 as c1
FROM
	DecimalStoredIntegerTable g_1
LIMIT 2

