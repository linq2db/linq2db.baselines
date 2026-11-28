-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Dto"
FROM
	"StampRow" r
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Dto" + 1 * Interval '1 Day'
FROM
	"StampRow" r
LIMIT 2

