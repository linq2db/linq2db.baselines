BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"
HAVING
	COUNT(*) > 1

