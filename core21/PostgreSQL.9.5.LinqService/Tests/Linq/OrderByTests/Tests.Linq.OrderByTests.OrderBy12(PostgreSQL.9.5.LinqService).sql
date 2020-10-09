BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	ch."ParentID", 
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	ch."ChildID" % 2 DESC

