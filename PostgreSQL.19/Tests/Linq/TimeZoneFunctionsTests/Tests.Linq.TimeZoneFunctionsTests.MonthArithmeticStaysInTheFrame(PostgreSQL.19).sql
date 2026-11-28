-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
SELECT
	(((r."Dto" AT TIME ZONE 'UTC') + Interval '1 Month') AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

