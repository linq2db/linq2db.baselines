BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip_1 Int32
SET     @skip_1 = 4
DECLARE @skip_1_1 Int32
SET     @skip_1_1 = 3

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT
			t1.ParentID,
			t1.Value1,
			ROWNUM as RN
		FROM
			(
				SELECT
					p.ParentID,
					p.Value1
				FROM
					Parent p
				WHERE
					p.ParentID > 1
			) t1
		WHERE
			ROWNUM <= :skip_1
	) t2
WHERE
	t2.RN > :skip_1_1

