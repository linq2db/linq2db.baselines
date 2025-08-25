BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[sq].[Rank],
	[sq].[RowNumber],
	[sq].[DenseRank]
FROM
	(
		SELECT
			RANK() OVER(PARTITION BY [p].[Value1], [c_1].[ChildID] ORDER BY [p].[Value1], [c_1].[ChildID], [c_1].[ParentID]) as [Rank],
			ROW_NUMBER() OVER(PARTITION BY [p].[Value1], [c_1].[ChildID] ORDER BY [p].[Value1] DESC, [c_1].[ChildID], [c_1].[ParentID] DESC) as [RowNumber],
			DENSE_RANK() OVER(PARTITION BY [p].[Value1], [c_1].[ChildID] ORDER BY [p].[Value1]) as [DenseRank]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
	) [sq]
WHERE
	[sq].[Rank] > 0

