-- Informix.DB2 Informix

SELECT
	NULLIF(s.String, 'abc')
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
	s.String = 'abc' OR s.String IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String = 'abc' OR s.String IS NULL)

-- Informix.DB2 Informix

SELECT
	NULLIF(s.String, 'xyz')
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
	s.String = 'xyz' OR s.String IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String = 'xyz' OR s.String IS NULL)

-- Informix.DB2 Informix

SELECT
	s.String
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
	s.String IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- Informix.DB2 Informix

SELECT
	NULLIF(s.NullableString, 'abc')
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
	s.NullableString = 'abc' OR s.NullableString IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString = 'abc' OR s.NullableString IS NULL)

-- Informix.DB2 Informix

SELECT
	NULLIF(s.NullableString, 'xyz')
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
	s.NullableString = 'xyz' OR s.NullableString IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString = 'xyz' OR s.NullableString IS NULL)

-- Informix.DB2 Informix

SELECT
	s.NullableString
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
	s.NullableString IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

