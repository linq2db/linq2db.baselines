-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Dto"
FROM
	"PreciseRow" r
LIMIT 2

-- PostgreSQL.13 PostgreSQL12
SELECT
	(((r."Dto" AT TIME ZONE 'UTC') + 1 * Interval '1 Day') AT TIME ZONE 'UTC')
FROM
	"PreciseRow" r
LIMIT 2

