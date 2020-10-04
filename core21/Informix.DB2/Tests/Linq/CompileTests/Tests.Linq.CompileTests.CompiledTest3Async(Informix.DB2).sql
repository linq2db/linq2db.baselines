BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 1

SELECT FIRST 1
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = @ParentID_1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 2

SELECT FIRST 2
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = @ParentID_1

