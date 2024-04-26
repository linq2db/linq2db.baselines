BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	ch."ChildID"
FROM
	"Parent" t1
		INNER JOIN "Child" ch ON t1."ParentID" = ch."ParentID"
WHERE
	(ch."ParentID" < 4 OR ch."ParentID" >= 4)

