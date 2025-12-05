-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.Value1

