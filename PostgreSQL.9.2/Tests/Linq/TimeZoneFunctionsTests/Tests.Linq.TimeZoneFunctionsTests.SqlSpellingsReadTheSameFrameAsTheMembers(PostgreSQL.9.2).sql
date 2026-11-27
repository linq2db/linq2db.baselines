-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE 'UTC')))::Int,
	Floor(Extract(hour From (r."Dto" AT TIME ZONE 'UTC')))::Int,
	(((r."Dto" AT TIME ZONE 'UTC') + Interval '1 Month') AT TIME ZONE 'UTC'),
	(((r."Dto" AT TIME ZONE 'UTC') + Interval '1 Month') AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

