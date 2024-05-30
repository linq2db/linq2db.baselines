BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1",
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID"
WHERE
	p."ParentID" >= 4

