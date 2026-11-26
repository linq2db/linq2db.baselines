-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(r."Dto" AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(r."Dto" AT TIME ZONE 'UTC')
FROM
	"ZonedRow" r
LIMIT 2

