-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT FIRST @take
			1 as c1
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
	) t2

