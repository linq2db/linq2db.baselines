BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" t1
		LEFT JOIN "Child" ch ON 1=1
WHERE
	t1."ParentID" = ch."ParentID"

