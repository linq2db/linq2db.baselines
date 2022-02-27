BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

