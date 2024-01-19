BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	MOD(x."ChildID", 2),
	x."ChildID" DESC

