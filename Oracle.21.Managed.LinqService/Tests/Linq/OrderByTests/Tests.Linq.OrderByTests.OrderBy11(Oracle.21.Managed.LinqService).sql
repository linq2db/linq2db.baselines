BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	MOD(x."ChildID", 2),
	x."ChildID" DESC

