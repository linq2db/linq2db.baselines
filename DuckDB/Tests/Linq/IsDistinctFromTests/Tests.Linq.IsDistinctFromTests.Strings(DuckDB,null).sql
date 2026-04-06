-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

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
	s.NullableString IS NULL

