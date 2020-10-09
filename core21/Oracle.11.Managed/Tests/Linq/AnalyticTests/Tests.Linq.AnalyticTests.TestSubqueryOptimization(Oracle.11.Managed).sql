BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	sq.Rank, 
	sq.RowNumber, 
	sq.DenseRank
FROM
	( 
		SELECT 
			RANK() OVER(PARTITION BY p.Value1, c_1.ChildID ORDER BY c_1.ParentID, c_1.ChildID, p.Value1) as Rank, 
			ROW_NUMBER() OVER(PARTITION BY p.Value1, c_1.ChildID ORDER BY c_1.ParentID DESC, c_1.ChildID, p.Value1 DESC) as RowNumber, 
			DENSE_RANK() OVER(PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1) as DenseRank
		FROM
			Parent p
				INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
	) sq
WHERE
	sq.Rank > 0

