-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE :zone)))::Int
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE :zone)))::Int
FROM
	"ZonedRow" r
LIMIT 2

