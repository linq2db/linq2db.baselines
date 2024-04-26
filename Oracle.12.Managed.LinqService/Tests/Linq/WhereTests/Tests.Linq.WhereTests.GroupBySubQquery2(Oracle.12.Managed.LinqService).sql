BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" IN (
		SELECT
			t1.MAX_1
		FROM
			(
				SELECT
					MAX(x_1."ChildID") as MAX_1
				FROM
					"Child" x_1
				GROUP BY
					x_1."ParentID"
			) t1
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" IN (
		SELECT
			t1.MAX_1
		FROM
			(
				SELECT
					MAX(x_1."ChildID") as MAX_1
				FROM
					"Child" x_1
				GROUP BY
					x_1."ParentID"
			) t1
	)

