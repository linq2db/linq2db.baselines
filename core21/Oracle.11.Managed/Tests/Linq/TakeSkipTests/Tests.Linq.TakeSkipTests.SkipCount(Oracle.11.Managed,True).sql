BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			t3.ChildID
		FROM
			(
				SELECT
					t2.ChildID,
					ROWNUM as RN
				FROM
					(
						SELECT
							t1.ChildID
						FROM
							Child t1
					) t2
			) t3
		WHERE
			t3.RN > :skip
	) t4

