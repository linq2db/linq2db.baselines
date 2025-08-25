BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	c2."ParentID"
FROM
	"Child" c2
GROUP BY
	c2."ParentID"
ORDER BY
	c2."ParentID"

