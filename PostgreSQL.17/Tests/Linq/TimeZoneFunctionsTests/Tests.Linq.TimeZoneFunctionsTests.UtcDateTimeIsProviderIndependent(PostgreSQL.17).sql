-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	(r."Dto" AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

