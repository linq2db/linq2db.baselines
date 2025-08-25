BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t6."ParentID",
	t6."ChildID"
FROM
	(
		SELECT
			t5."ParentID",
			t5."ChildID",
			ROWNUM as RN
		FROM
			(
				SELECT
					t4."ParentID",
					t4."ChildID"
				FROM
					(
						SELECT
							t3."ChildID",
							t3."ParentID"
						FROM
							(
								SELECT
									t2."ChildID",
									t2."ParentID",
									ROWNUM as RN
								FROM
									(
										SELECT
											t1."ChildID",
											t1."ParentID"
										FROM
											"Child" t1
										ORDER BY
											t1."ChildID" DESC
									) t2
								WHERE
									ROWNUM <= 8
							) t3
						WHERE
							t3.RN > 1
					) t4
				ORDER BY
					t4."ChildID"
			) t5
	) t6
WHERE
	t6.RN > 2
ORDER BY
	t6."ChildID"

