-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	MOD(ch."ChildID", 2) DESC

