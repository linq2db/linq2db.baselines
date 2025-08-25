BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 4

SELECT DISTINCT
	t1.ParentID
FROM
	(
		SELECT FIRST @take
			ch.ParentID
		FROM
			Child ch
		ORDER BY
			ch.ParentID
	) t1

