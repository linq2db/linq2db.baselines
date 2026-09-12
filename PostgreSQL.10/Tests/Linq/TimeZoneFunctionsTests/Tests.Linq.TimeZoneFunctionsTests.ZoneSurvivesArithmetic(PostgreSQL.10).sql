-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From ((r."Dto" AT TIME ZONE :zone) + 1 * Interval '1 Hour')))::Int
FROM
	"ZonedRow" r
LIMIT 2

