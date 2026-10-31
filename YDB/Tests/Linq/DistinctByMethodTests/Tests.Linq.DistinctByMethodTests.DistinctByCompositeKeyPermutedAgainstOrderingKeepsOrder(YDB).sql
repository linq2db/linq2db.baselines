-- YDB Ydb
SELECT
	p.ParentID as ParentID
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.ParentID, e.Value1 ORDER BY e.Value1, e.ParentID) as RowNumber,
			e.Value1 as Value1,
			e.ParentID as ParentID
		FROM
			Parent e
	) p
WHERE
	p.RowNumber = 1l
ORDER BY
	p.Value1,
	p.ParentID

