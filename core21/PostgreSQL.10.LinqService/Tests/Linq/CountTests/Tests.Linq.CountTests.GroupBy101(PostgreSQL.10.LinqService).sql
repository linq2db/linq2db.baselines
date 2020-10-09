BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

