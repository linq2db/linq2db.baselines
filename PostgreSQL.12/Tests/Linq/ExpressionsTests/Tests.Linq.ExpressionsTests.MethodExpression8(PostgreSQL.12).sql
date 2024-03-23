BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Cast(Floor(Floor(Cast(ch."ChildID" as Float) / 10)) as Int)
WHERE
	ch."ParentID" = p."ParentID"

