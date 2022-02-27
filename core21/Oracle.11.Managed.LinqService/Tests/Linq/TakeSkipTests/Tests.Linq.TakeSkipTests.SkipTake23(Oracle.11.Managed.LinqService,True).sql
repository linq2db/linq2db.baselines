BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 8
DECLARE @skip_1 Int32
SET     @skip_1 = 3

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
				ORDER BY
					t1.ChildID
			) t2
		WHERE
			ROWNUM <= :skip
	) t3
WHERE
	t3.RN > :skip_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 8
DECLARE @skip_1 Int32
SET     @skip_1 = 3

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
				ORDER BY
					t1.ChildID
			) t2
		WHERE
			ROWNUM <= :skip
	) t3
WHERE
	t3.RN > :skip_1

