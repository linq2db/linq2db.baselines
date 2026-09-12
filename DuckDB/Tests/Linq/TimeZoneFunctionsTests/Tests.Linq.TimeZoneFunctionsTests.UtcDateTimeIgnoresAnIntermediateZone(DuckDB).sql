-- DuckDB
SELECT
	(r.Dto AT TIME ZONE 'UTC')
FROM
	ZonedRow r
LIMIT 2

