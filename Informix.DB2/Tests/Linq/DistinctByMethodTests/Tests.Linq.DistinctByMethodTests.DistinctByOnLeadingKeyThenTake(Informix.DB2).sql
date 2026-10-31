-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod(e.ParentID, 3) ORDER BY Mod(e.ParentID, 3), e.ParentID DESC) as RowNumber,
			e.ParentID,
			e.Value1
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	Mod(t1.ParentID, 3),
	t1.ParentID DESC

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

