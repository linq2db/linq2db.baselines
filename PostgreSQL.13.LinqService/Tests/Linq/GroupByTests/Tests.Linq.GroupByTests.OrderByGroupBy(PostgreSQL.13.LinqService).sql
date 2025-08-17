BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	c2."ParentID"
FROM
	"Child" c2
GROUP BY
	c2."ParentID"
ORDER BY
	c2."ParentID"

