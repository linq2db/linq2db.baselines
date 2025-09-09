BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" DESC,
	MOD(x."ChildID", 2)

