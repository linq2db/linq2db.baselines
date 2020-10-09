BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Count(*), 
	Max(t1."ChildID")
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

