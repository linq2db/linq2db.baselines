BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	ch."ChildID" + 1,
	Sum(ch."ParentID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID" + 1

