-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	MOD(x."ChildID", 2),
	x."ChildID"

