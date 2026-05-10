-- DuckDB

SELECT
	NULLIF(s.String, 'abc')
FROM
	Src s
ORDER BY
	s."Int"

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String = 'abc' OR s.String IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String = 'abc' OR s.String IS NULL)

-- DuckDB

SELECT
	NULLIF(s.String, 'xyz')
FROM
	Src s
ORDER BY
	s."Int"

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String = 'xyz' OR s.String IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.String = 'xyz' OR s.String IS NULL)

-- DuckDB

SELECT
	s.String
FROM
	Src s
ORDER BY
	s."Int"

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- DuckDB

SELECT
	NULLIF(s.NullableString, 'abc')
FROM
	Src s
ORDER BY
	s."Int"

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString = 'abc' OR s.NullableString IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString = 'abc' OR s.NullableString IS NULL)

-- DuckDB

SELECT
	NULLIF(s.NullableString, 'xyz')
FROM
	Src s
ORDER BY
	s."Int"

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString = 'xyz' OR s.NullableString IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableString = 'xyz' OR s.NullableString IS NULL)

-- DuckDB

SELECT
	s.NullableString
FROM
	Src s
ORDER BY
	s."Int"

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

