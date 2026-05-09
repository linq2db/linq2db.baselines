-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Paranoid%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%paranoid%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%paranoid%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%Paranoid%' ESCAPE '~'

