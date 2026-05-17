-- DuckDB

SELECT
	NULLIF(s."Int", 2)
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
	s."Int" = 2

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" <> 2

-- DuckDB

SELECT
	NULLIF(s."Int", 4)
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
	s."Int" = 4

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" <> 4

-- DuckDB

SELECT
	s."Int"
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
	1 = 0

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s

-- DuckDB

SELECT
	NULLIF(s.NullableInt, 2)
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
	s.NullableInt = 2 OR s.NullableInt IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 2 OR s.NullableInt IS NULL)

-- DuckDB

SELECT
	NULLIF(s.NullableInt, 4)
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
	s.NullableInt = 4 OR s.NullableInt IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT (s.NullableInt = 4 OR s.NullableInt IS NULL)

-- DuckDB

SELECT
	s.NullableInt
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
	s.NullableInt IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

