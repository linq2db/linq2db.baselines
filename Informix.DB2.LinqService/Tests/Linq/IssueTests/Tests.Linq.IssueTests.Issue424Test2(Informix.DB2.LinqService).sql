BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID,
			t1.Value1
		FROM
			Parent t1
	) t2
ORDER BY
	t2.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

