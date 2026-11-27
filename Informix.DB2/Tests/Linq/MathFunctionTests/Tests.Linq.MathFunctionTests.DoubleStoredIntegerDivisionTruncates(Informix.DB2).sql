-- Informix.DB2 Informix
SELECT
	(t.D::Int / 2)::Int
FROM
	DoubleStoredIntegerTable t
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.D
FROM
	DoubleStoredIntegerTable t1

-- Informix.DB2 Informix
SELECT
	t.Id
FROM
	DoubleStoredIntegerTable t
WHERE
	(t.D::Int / 2)::Int = -3
ORDER BY
	t.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.D
FROM
	DoubleStoredIntegerTable t1

