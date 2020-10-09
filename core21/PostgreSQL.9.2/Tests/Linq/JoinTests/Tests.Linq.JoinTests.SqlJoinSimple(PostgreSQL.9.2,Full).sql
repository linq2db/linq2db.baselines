BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p."ParentID", 
	r."ChildID"
FROM
	"Parent" p
		FULL JOIN "Child" r ON p."ParentID" = r."ParentID"

