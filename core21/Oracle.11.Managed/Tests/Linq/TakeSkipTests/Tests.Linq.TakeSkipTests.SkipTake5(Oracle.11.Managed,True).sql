BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 7
DECLARE @skip_1 Int32
SET     @skip_1 = 2

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
			ROWNUM <= :skip
	) t3
WHERE
	t3.RN > :skip_1

