-- DuckDB
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- DuckDB
SELECT
	EXTRACT(hour FROM (r.Dto AT TIME ZONE 'UTC'))
FROM
	ZonedRow r
LIMIT 2

