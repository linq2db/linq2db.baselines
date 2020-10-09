BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	x."ParentID", 
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" % 2 DESC,
	x."ChildID" DESC

