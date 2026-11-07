-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	t1.RowNumber_2,
	t1.RowNumber_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
			e.Value1 as RowNumber_1,
			e.ParentID as RowNumber_2
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	t1.RowNumber_2 DESC

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

