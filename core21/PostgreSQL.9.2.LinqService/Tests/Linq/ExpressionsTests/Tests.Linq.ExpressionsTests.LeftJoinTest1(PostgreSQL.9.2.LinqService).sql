BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t."ParentID", 
	t."ChildID", 
	gr."ParentID", 
	gr."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" gr ON t."ParentID" = gr."ParentID"

