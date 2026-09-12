-- PostgreSQL.9.5 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From ((r."Dto" AT TIME ZONE :zone) + 10 * Interval '1 Day' + Interval '1 Month' + 1 * Interval '1 Hour')))::Int
FROM
	"ZonedRow" r
LIMIT 2

