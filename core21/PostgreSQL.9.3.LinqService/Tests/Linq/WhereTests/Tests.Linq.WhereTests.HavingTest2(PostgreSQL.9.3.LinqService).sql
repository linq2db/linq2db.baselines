BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Child" c_1
GROUP BY
	c_1."ParentID"
HAVING
	Count(*) > 1 AND Count(*) > 1

