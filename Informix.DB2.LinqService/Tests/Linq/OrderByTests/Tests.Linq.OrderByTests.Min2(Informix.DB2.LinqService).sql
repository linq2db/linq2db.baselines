BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	MIN(t2.ParentID)
FROM
	(
		SELECT FIRST @take
			t1.ParentID
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
	) t2

