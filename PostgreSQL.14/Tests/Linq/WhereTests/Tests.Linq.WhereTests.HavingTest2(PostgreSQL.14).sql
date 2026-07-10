-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Child" c_1
GROUP BY
	c_1."ParentID"
HAVING
	COUNT(*) > 1

