-- PostgreSQL.19 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	((((r."Dto" AT TIME ZONE :zone) + 6 * Interval '1 Month') - ((r."Dto" AT TIME ZONE :zone) - (r."Dto" AT TIME ZONE 'UTC'))) AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

