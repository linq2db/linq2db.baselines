-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"
HAVING
	COUNT(*) > 1

