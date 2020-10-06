BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 5000

SELECT
	key_data_result.ParentID,
	c_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID
		FROM
			(
				SELECT
					t.ParentID
				FROM
					Parent t
				WHERE
					t.ParentID > 0 AND ROWNUM <= :take
			) t1
	) key_data_result
		INNER JOIN Child c_1 ON c_1.ParentID = key_data_result.ParentID AND c_1.ChildID > -100

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 5000

SELECT
	t.ParentID,
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = t.ParentID AND c_1.ChildID > -100
	) THEN 1 ELSE 0 END,
	(
		SELECT
			Count(*)
		FROM
			Child c_2
		WHERE
			c_2.ParentID = t.ParentID AND c_2.ChildID > -100
	),
	(
		SELECT
			c_3.ParentID
		FROM
			Child c_3
		WHERE
			c_3.ParentID = t.ParentID AND
			c_3.ChildID > -100 AND
			c_3.ParentID > 0 AND
			ROWNUM <= :take
	)
FROM
	Parent t
WHERE
	t.ParentID > 0 AND ROWNUM <= :take_1

