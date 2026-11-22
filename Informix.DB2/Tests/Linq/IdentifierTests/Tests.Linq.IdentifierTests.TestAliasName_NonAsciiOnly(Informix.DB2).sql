-- Informix.DB2 Informix
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 1

SELECT
	t2.ParentID,
	t2.Value1
FROM
	Parent t2
		INNER JOIN Child t1 ON t1.ParentID = t2.ParentID
WHERE
	t2.ParentID = @parentId

