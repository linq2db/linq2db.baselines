BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT 
	Max(c_1.ParentID)
FROM
	Child c_1
WHERE
	c_1.ParentID = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT 
	Max(c_1.ParentID)
FROM
	Child c_1
WHERE
	c_1.ParentID = :ParentID

