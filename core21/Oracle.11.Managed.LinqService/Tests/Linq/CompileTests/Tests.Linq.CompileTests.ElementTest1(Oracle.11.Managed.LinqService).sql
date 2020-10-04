BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = :ParentID_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = :ParentID_1 AND ROWNUM <= :take

