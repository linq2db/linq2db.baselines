BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			t2."ParentID" = t1."ParentID" AND t1."ChildID" > 30
	),
	(
		SELECT
			Sum(c_1."ChildID")
		FROM
			"Child" c_1
		WHERE
			t2."ParentID" = c_1."ParentID" AND c_1."ChildID" > 30
	)
FROM
	"Child" t2
GROUP BY
	t2."ParentID"

