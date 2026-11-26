-- Informix.DB2 Informix
SELECT
	(t.X::Int / 2)::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	t.Id
FROM
	DecimalStoredIntegerTable t
WHERE
	(t.X::Int / 2)::Int = -3
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
DECLARE @two Decimal(4)
SET     @two = 2

SELECT
	(t.X::Int / @two::Decimal(10, 0))::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	((t.X + 1)::Int / 2)::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	((-t.X)::Int / 2)::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	(Abs(t.X)::Int / 2)::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	(60 / t.X::Int)::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	(t.X::Int / t.X2::Int)::Int
FROM
	DecimalStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.X,
	t1.X2
FROM
	DecimalStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT FIRST 2
	(SUM(g_1.X)::Int / 2)::Int
FROM
	DecimalStoredIntegerTable g_1

