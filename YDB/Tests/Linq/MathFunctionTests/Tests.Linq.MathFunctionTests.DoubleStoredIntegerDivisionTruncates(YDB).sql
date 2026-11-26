-- YDB Ydb
SELECT
	Unwrap(CAST(t.D AS Int32)) / 2 as c1
FROM
	DoubleStoredIntegerTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D
FROM
	DoubleStoredIntegerTable t1

-- YDB Ydb
SELECT
	t.Id as Id
FROM
	DoubleStoredIntegerTable t
WHERE
	Unwrap(CAST(t.D AS Int32)) / 2 = -3
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.D as D
FROM
	DoubleStoredIntegerTable t1

