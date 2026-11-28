-- DuckDB
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- DuckDB
SELECT
	CAST((r.Dto AT TIME ZONE 'UTC') AS TIME)
FROM
	ZonedRow r
LIMIT 2

