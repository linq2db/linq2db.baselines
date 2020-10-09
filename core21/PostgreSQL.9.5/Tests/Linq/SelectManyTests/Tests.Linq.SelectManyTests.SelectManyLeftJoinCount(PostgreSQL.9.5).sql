BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	Count(*)
FROM
	"Parent" p
		LEFT JOIN "Child" o ON p."ParentID" = o."ParentID"

