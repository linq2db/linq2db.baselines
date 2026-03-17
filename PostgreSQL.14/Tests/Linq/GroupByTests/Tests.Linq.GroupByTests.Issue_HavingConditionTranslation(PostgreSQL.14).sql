-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."MiddleName",
	COUNT(*)
FROM
	"Person" t1
GROUP BY
	t1."MiddleName"
HAVING
	t1."MiddleName" IS NULL OR t1."MiddleName" <> 'Unknown'

