BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."ParentID",
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID"

