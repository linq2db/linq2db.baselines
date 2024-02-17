BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t3."Count_1" + t3."Count_1"
FROM
	(
		SELECT
			t1."Count_1"
		FROM
			"Parent" t2
				OUTER APPLY (
					SELECT
						Count(*) as "Count_1"
					FROM
						"Child" c_1
					WHERE
						t2."ParentID" = c_1."ParentID"
				) t1
	) t3

