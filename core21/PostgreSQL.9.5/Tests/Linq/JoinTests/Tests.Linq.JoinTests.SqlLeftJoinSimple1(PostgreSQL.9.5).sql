BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	r."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" r ON p."ParentID" = r."ParentID"

