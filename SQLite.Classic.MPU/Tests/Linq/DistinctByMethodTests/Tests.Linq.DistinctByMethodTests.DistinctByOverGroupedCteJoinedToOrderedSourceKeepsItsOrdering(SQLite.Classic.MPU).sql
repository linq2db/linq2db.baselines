-- SQLite.Classic.MPU SQLite.Classic SQLite
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
			ROW_NUMBER() OVER (PARTITION BY [p].[Value1] ORDER BY [p].[ParentID] DESC) as [RowNumber],
			[p].[Value1],
			[p].[ParentID],
			[e].[Count_1]
		FROM
			[CTE_1] [e]
				INNER JOIN [Parent] [p] ON [e].[Key_1] = [p].[ParentID]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

