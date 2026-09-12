-- DuckDB
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- DuckDB
SELECT
	EXTRACT(day FROM (r.Dto AT TIME ZONE 'UTC')),
	EXTRACT(month FROM (r.Dto AT TIME ZONE 'UTC')),
	EXTRACT(year FROM (r.Dto AT TIME ZONE 'UTC')),
	EXTRACT(dayofyear FROM (r.Dto AT TIME ZONE 'UTC'))
FROM
	ZonedRow r
LIMIT 2

