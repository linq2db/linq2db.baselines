-- ClickHouse.Driver ClickHouse

SELECT
	toInt64(sq.Rank_1),
	sq.RowNumber,
	sq.DenseRank
FROM
	(
		SELECT
			toInt64(RANK() OVER (PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1, c_1.ChildID, c_1.ParentID)) as Rank,
			RANK() OVER (PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1, c_1.ChildID, c_1.ParentID) as Rank_1,
			ROW_NUMBER() OVER (PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1 DESC, c_1.ChildID, c_1.ParentID DESC) as RowNumber,
			DENSE_RANK() OVER (PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1) as DenseRank
		FROM
			Parent p
				INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
	) sq
WHERE
	sq.Rank > toInt64(0)

