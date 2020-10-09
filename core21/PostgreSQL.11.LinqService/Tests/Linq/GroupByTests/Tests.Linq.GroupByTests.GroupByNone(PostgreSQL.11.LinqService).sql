BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	Min(t1."ParentID"), 
	Max(t1."ParentID")
FROM
	"Parent" t1

