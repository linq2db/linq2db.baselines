-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" c_1
GROUP BY
	c_1."ParentID"
HAVING
	COUNT(*) > 1

