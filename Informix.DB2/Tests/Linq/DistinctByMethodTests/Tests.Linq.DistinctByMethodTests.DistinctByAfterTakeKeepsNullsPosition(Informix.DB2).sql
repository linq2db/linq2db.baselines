-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 7

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod(e.ParentID, 2) ORDER BY e.Value1, e.ParentID) as RowNumber,
			e.Value1,
			e.ParentID
		FROM
			(
				SELECT FIRST @take
					p.ParentID,
					p.Value1
				FROM
					Parent p
				ORDER BY
					p.Value1,
					p.ParentID
			) e
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	t1.Value1,
	t1.ParentID

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

