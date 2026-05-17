-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = @p

