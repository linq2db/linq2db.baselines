BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT FIRST @take
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

