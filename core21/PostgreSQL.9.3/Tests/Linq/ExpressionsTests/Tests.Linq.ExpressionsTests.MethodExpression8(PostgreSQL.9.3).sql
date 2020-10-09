BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	ch."ParentID", 
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Floor(Cast(ch."ChildID" as Float) / 10)
WHERE
	ch."ParentID" = p."ParentID"

