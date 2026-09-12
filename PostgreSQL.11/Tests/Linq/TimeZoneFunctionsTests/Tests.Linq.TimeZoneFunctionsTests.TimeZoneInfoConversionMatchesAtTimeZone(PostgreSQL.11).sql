-- PostgreSQL.11 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE :zone)))::Int
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.11 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE :zone)))::Int
FROM
	"ZonedRow" r
LIMIT 2

