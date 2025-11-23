-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	c2."ParentID"
FROM
	"Child" c2
GROUP BY
	c2."ParentID"
ORDER BY
	c2."ParentID"

