-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Extract(hour From (r."Dto" AT TIME ZONE 'UTC')))::Int
FROM
	"ZonedRow" r
LIMIT 2

