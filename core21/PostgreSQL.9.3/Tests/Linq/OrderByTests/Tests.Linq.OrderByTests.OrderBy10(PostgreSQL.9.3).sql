BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	x."ParentID", 
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" % 2,
	x."ChildID" DESC

