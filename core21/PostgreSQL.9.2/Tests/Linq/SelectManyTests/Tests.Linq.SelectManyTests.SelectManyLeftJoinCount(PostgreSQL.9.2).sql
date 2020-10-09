BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Count(*)
FROM
	"Parent" p
		LEFT JOIN "Child" o ON p."ParentID" = o."ParentID"

