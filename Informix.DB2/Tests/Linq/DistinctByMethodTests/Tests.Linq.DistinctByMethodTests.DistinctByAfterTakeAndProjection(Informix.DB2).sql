-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 7

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
			e.ParentID,
			e.Value1
		FROM
			(
				SELECT FIRST @take
					p.Value1,
					p.ParentID
				FROM
					Parent p
				ORDER BY
					p.ParentID DESC
			) e
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	t1.ParentID DESC

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

