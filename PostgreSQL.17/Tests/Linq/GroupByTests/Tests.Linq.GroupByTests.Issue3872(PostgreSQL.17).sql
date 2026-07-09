-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	MAX(r."PersonID")
FROM
	"Person" r
UNION ALL
SELECT
	r_1."PersonID"
FROM
	"Person" r_1

