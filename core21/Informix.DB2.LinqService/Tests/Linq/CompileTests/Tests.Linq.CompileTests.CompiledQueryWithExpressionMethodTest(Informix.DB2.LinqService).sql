BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 1

SELECT FIRST 1
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = @ParentID_1
ORDER BY
	x.ParentID DESC

