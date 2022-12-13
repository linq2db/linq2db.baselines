BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t3."Key_1"
FROM
	(
		SELECT
			t2."Key_1"
		FROM
			(
				SELECT
					CASE
						WHEN (
							SELECT
								Round(AVG(c_1."ParentID"), 27)
							FROM
								"Child" c_1
							WHERE
								p."ParentID" = c_1."ParentID"
						) > 3D
							THEN 1
						ELSE 0
					END as "Key_1"
				FROM
					"Parent" p
				WHERE
					(
						SELECT
							Count(*)
						FROM
							"Child" t1
						WHERE
							p."ParentID" = t1."ParentID"
					) > 0
			) t2
	) t3
GROUP BY
	t3."Key_1"

