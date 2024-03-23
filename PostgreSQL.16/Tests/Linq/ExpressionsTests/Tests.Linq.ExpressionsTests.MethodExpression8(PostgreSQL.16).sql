BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Cast(Floor(Floor(Cast(ch."ChildID" as Float) / 10)) as Int)
WHERE
	ch."ParentID" = p."ParentID"

