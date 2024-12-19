BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	EXISTS(
		SELECT
			MAX(y."ChildID")
		FROM
			"Child" y
		GROUP BY
			y."ParentID"
		HAVING
			MAX(y."ChildID") = x."ChildID"
	)

