-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.5 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	(((r."Dto" AT TIME ZONE 'UTC') + 1 * Interval '1 Day') AT TIME ZONE :zone)
FROM
	"ZonedRow" r
LIMIT 2

