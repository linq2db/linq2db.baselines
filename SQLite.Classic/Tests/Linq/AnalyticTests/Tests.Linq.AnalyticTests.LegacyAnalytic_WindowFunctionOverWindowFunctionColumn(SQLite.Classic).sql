-- SQLite.Classic SQLite
SELECT
	[p_1].[Ordered],
	[p_1].[Partitioned],
	ROW_NUMBER() OVER (PARTITION BY [p_1].[c1] ORDER BY [p_1].[ParentID]),
	ROW_NUMBER() OVER (PARTITION BY [p_1].[Ordered] ORDER BY [p_1].[ParentID]),
	ROW_NUMBER() OVER (PARTITION BY [p_1].[Partitioned] ORDER BY [p_1].[ParentID])
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [p].[ParentID]) as [Ordered],
			ROW_NUMBER() OVER (PARTITION BY [p].[Value1]) as [Partitioned],
			ROW_NUMBER() OVER () as [c1],
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [p_1]

