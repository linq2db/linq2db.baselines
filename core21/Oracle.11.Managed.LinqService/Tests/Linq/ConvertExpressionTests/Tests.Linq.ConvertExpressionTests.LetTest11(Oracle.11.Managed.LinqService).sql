BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			c_1.ParentID,
			c_1.ChildID
		FROM
			Child c_1
		WHERE
			c_1.ParentID > 0
		ORDER BY
			c_1.ParentID
	) t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID > -100 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	1
FROM
	Parent p

