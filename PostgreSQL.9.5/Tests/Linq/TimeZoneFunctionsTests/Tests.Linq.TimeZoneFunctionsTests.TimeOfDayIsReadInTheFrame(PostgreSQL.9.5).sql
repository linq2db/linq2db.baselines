-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.5 PostgreSQL
SELECT
	(r."Dto" AT TIME ZONE 'UTC')::Time
FROM
	"ZonedRow" r
LIMIT 2

