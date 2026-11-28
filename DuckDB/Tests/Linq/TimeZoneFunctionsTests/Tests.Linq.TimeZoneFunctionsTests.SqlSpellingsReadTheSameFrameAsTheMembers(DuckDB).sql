-- DuckDB
SELECT
	EXTRACT(hour FROM (r.Dto AT TIME ZONE 'UTC')),
	EXTRACT(hour FROM (r.Dto AT TIME ZONE 'UTC')),
	(((r.Dto AT TIME ZONE 'UTC') + Interval '1 Month') AT TIME ZONE 'UTC'),
	(((r.Dto AT TIME ZONE 'UTC') + Interval '1 Month') AT TIME ZONE 'UTC')
FROM
	ZonedRow r
LIMIT 2

