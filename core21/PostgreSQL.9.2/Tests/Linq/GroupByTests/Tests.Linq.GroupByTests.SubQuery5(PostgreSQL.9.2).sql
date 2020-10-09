BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Sum(ch."ParentID")
FROM
	"Child" ch
		LEFT JOIN "Parent" pg ON ch."ParentID" = pg."ParentID"
GROUP BY
	ch."ChildID"

