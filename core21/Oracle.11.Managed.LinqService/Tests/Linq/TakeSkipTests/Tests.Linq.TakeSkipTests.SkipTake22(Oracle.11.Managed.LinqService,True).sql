BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip_1_1_1_1_1_1 Int32
SET     @skip_1_1_1_1_1_1 = 7
DECLARE @skip_1_1_1_1_1_1_1 Int32
SET     @skip_1_1_1_1_1_1_1 = 2

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
					t1.ChildID DESC
			) t2
		WHERE
			ROWNUM <= :skip_1_1_1_1_1_1
	) t3
WHERE
	t3.RN > :skip_1_1_1_1_1_1_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip_1_1_1_1_1_1_1 Int32
SET     @skip_1_1_1_1_1_1_1 = 7
DECLARE @skip_1_1_1_1_1_1_1_1 Int32
SET     @skip_1_1_1_1_1_1_1_1 = 2

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
					t1.ChildID DESC
			) t2
		WHERE
			ROWNUM <= :skip_1_1_1_1_1_1_1
	) t3
WHERE
	t3.RN > :skip_1_1_1_1_1_1_1_1

