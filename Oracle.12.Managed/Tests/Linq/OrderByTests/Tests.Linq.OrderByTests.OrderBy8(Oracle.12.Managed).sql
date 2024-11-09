BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID",
	MOD(x."ChildID", 2)

