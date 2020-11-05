BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @skip_1 Int32
SET     @skip_1 = 1

SELECT
	t3.ParentID,
	t3.Value1
FROM
	(
		SELECT
			t2.ParentID,
			t2.Value1,
			ROWNUM as RN
		FROM
			(
				SELECT DISTINCT
					t1.ParentID,
					t1.Value1
				FROM
					Parent t1
				ORDER BY
					t1.ParentID
			) t2
		WHERE
			ROWNUM <= :skip
	) t3
WHERE
	t3.RN > :skip_1

