-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

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
WHERE
	s.NullableInt IS NULL

