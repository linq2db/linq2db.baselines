BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = Floor(Cast(ch."ChildID" as Float) / 10D)
WHERE
	ch."ParentID" = p."ParentID"

