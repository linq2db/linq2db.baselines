-- SQLite.Classic.MPM SQLite.Classic SQLite
WITH [CTE_1] ([Key_1], [Count_1])
AS
(
	SELECT
		[g_1].[ParentID],
		COUNT(*)
	FROM
		[Child] [g_1]
	GROUP BY
		[g_1].[ParentID]
)
SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[Value1],
			[e].[ParentID],
			[c_1].[Count_1]
		FROM
			[Parent] [e]
				INNER JOIN [CTE_1] [c_1] ON [e].[ParentID] = [c_1].[Key_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

