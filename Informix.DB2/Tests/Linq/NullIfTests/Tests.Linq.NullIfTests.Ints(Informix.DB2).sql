-- Informix.DB2 Informix

SELECT
	NULLIF(s."Int", 2)
FROM
	Src s
ORDER BY
	s."Int"

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" = 2

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" <> 2

-- Informix.DB2 Informix

SELECT
	NULLIF(s."Int", 4)
FROM
	Src s
ORDER BY
	s."Int"

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" = 4

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" <> 4

-- Informix.DB2 Informix

SELECT
	s."Int"
FROM
	Src s
ORDER BY
	s."Int"

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	1 = 0

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s

-- Informix.DB2 Informix

SELECT
	NULLIF(s.NullableInt, 2)
FROM
	Src s
ORDER BY
	s."Int"

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt = 2 OR s.NullableInt IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 2 OR s.NullableInt IS NULL)

-- Informix.DB2 Informix

SELECT
	NULLIF(s.NullableInt, 4)
FROM
	Src s
ORDER BY
	s."Int"

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt = 4 OR s.NullableInt IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 4 OR s.NullableInt IS NULL)

-- Informix.DB2 Informix

SELECT
	s.NullableInt
FROM
	Src s
ORDER BY
	s."Int"

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

