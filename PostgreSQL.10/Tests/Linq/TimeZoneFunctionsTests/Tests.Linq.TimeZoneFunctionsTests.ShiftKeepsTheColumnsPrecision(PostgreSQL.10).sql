-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Dto"
FROM
	"PreciseRow" r
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(((r."Dto" AT TIME ZONE 'UTC') + 1 * Interval '1 Day') AT TIME ZONE 'UTC')
FROM
	"PreciseRow" r
LIMIT 2

