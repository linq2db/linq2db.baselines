-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 4

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.Value1 ORDER BY Nvl(e_1.Value1, 0), e_1.ParentID DESC) as RowNumber,
			e_1.Value1,
			e_1.ParentID
		FROM
			(
				SELECT FIRST @take
					e.Value1,
					e.ParentID
				FROM
					Parent e
				ORDER BY
					Nvl(e.Value1, 0),
					e.ParentID DESC
			) e_1
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	Nvl(t1.Value1, 0),
	t1.ParentID DESC

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

