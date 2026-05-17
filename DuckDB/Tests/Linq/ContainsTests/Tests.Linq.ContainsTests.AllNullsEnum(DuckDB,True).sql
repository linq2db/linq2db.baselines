-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Enum IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.Enum IS NOT NULL

