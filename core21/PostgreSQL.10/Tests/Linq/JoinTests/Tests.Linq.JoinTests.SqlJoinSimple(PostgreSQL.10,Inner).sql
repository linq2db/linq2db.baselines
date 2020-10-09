BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	r."ChildID"
FROM
	"Parent" p
		INNER JOIN "Child" r ON p."ParentID" = r."ParentID"

