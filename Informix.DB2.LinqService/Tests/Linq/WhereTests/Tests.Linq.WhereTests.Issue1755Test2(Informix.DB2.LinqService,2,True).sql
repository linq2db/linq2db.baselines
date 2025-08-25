BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 2

SELECT
	c_1.ParentID,
	c_1.Value1
FROM
	Parent c_1
WHERE
	c_1.ParentID = @id AND c_1.Value1 IS NULL

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

