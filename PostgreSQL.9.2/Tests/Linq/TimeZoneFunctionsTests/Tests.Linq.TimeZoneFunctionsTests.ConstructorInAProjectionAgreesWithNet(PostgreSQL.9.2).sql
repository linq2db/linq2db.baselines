-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	(r."Dto" AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

