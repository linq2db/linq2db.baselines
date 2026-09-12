-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE 'UTC')))::Int
FROM
	"ZonedRow" r
LIMIT 2

