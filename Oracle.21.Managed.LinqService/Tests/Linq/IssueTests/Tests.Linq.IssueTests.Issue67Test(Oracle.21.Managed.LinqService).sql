BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t_1."ParentID",
	t_1.COUNT_1
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" c_1
				WHERE
					t."ParentID" = c_1."ParentID"
			) as COUNT_1,
			t."ParentID"
		FROM
			"Parent" t
	) t_1
WHERE
	t_1.COUNT_1 > 0

