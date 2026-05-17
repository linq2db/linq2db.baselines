-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'Hall%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'hall%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE 'hall%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE 'Hall%' ESCAPE '~'

