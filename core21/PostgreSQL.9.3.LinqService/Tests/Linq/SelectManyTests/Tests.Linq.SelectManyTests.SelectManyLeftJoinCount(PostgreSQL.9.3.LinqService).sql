BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Count(*)
FROM
	"Parent" p
		LEFT JOIN "Child" o ON p."ParentID" = o."ParentID"

