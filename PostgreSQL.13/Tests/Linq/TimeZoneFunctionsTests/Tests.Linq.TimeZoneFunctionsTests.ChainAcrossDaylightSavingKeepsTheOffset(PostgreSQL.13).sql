-- PostgreSQL.13 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From ((r."Dto" AT TIME ZONE :zone) + 6 * Interval '1 Month' + 1 * Interval '1 Hour')))::Int,
	((((r."Dto" AT TIME ZONE :zone) + 6 * Interval '1 Month' + 1 * Interval '1 Hour') - ((r."Dto" AT TIME ZONE :zone) - (r."Dto" AT TIME ZONE 'UTC'))) AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

