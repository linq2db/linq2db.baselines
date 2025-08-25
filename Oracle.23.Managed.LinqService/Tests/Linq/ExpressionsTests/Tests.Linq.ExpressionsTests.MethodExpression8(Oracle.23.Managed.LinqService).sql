BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON p."ParentID" = CAST(Floor(CAST(ch."ChildID" AS Float) / 10D) AS Int)
WHERE
	ch."ParentID" = p."ParentID"

