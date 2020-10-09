BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Count(*)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

