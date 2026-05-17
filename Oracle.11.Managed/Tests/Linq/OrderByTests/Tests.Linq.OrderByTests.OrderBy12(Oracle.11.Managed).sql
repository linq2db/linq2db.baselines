-- Oracle.11.Managed Oracle11

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	MOD(ch."ChildID", 2) DESC

