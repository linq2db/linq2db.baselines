-- YDB Ydb
SELECT
	p.ParentID as ParentID
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
			e.ParentID as ParentID
		FROM
			Parent e
	) p
WHERE
	p.RowNumber = 1l
ORDER BY
	p.ParentID DESC

