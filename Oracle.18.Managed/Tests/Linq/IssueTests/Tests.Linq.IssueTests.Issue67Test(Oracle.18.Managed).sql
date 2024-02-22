BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			t."ParentID" = c_1."ParentID"
	)
FROM
	"Parent" t
WHERE
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			t."ParentID" = c_1."ParentID"
	) > 0

