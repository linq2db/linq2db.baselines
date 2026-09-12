-- PostgreSQL.19 PostgreSQL12
SELECT
	(r."Dto" AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

