BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT FIRST 1
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = @ParentID
ORDER BY
	x.ParentID DESC

