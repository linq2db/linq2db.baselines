BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			t3.ParentID,
			t3.ChildID
		FROM
			(
				SELECT
					t2.ParentID,
					t2.ChildID,
					ROWNUM as RN
				FROM
					(
						SELECT
							t1.ParentID,
							t1.ChildID
						FROM
							Child t1
					) t2
				WHERE
					ROWNUM <= 7
			) t3
		WHERE
			t3.RN > 2
	) t4

