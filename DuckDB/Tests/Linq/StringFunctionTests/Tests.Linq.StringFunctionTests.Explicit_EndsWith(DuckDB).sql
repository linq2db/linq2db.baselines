-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Persecution' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%persecution' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%persecution' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%Persecution' ESCAPE '~'

