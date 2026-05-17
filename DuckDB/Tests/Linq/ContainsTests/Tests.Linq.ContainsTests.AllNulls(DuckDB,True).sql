-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s."Int" IS NOT NULL

