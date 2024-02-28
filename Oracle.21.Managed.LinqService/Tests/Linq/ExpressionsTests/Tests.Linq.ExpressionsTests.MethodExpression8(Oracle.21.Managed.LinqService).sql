BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Cast(Floor(Floor(Cast(ch."ChildID" as Float) / 10D)) as Int)
WHERE
	ch."ParentID" = p."ParentID"

