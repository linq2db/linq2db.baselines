-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	(((r."Dto" AT TIME ZONE 'UTC') + 1 * Interval '1 Day') AT TIME ZONE :zone)
FROM
	"ZonedRow" r
LIMIT 2

