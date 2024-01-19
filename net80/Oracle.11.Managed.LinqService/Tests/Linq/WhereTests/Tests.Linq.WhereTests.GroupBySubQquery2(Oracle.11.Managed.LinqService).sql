BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" IN (
		SELECT
			Max(t1."ChildID")
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	)

