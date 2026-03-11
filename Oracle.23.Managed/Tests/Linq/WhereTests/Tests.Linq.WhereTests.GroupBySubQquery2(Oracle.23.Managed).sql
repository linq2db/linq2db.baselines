-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" IN (
		SELECT
			MAX(x_1."ChildID")
		FROM
			"Child" x_1
		GROUP BY
			x_1."ParentID"
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" IN (
		SELECT
			MAX(x_1."ChildID")
		FROM
			"Child" x_1
		GROUP BY
			x_1."ParentID"
	)

