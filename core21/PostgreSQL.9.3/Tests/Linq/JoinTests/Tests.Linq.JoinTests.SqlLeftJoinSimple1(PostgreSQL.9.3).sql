BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p."ParentID", 
	r."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" r ON p."ParentID" = r."ParentID"

