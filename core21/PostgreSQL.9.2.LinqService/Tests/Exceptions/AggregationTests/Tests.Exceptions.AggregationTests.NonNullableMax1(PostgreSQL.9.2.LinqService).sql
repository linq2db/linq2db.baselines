BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Max(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

