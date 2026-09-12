-- PostgreSQL.11 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.11 PostgreSQL
SELECT
	(r."Dto" AT TIME ZONE 'UTC')::Time
FROM
	"ZonedRow" r
LIMIT 2

