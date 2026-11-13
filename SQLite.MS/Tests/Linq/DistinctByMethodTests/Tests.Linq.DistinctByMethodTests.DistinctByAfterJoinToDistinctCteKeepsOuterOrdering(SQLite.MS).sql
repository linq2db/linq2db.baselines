-- SQLite.MS SQLite
WITH [CTE_1] ([ParentID])
AS
(
	SELECT DISTINCT
		[c_1].[ParentID]
	FROM
		[Child] [c_1]
)
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[Value1],
			[e].[ParentID]
		FROM
			[Parent] [e]
				INNER JOIN [CTE_1] [c_2] ON [e].[ParentID] = [c_2].[ParentID]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

