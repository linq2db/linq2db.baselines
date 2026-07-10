-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	MAX(r."PersonID")
FROM
	"Person" r
UNION ALL
SELECT
	r_1."PersonID"
FROM
	"Person" r_1

