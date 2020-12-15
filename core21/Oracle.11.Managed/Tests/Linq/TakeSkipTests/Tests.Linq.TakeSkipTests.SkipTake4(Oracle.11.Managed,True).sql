BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take_1 Int32
SET     @take_1 = 8
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 2

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
									ROWNUM <= :take_1
							) t3
						WHERE
							t3.RN > :skip
					) t4
				ORDER BY
					t4."ChildID"
			) t5
	) t6
WHERE
	t6.RN > :skip_1

