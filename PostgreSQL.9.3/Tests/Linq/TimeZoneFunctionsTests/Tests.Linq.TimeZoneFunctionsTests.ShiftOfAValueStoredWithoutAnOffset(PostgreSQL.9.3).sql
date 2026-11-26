-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Dto"
FROM
	"StampRow" r
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Dto" + 1 * Interval '1 Day'
FROM
	"StampRow" r
LIMIT 2

