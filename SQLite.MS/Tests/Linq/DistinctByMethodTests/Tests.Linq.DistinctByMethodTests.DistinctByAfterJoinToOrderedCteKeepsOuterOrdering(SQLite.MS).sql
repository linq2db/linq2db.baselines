-- SQLite.MS SQLite
DECLARE @take Integer -- Int32
SET     @take = 1000

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[t1].[ParentID]
	FROM
		[Child] [t1]
	ORDER BY
		[t1].[ChildID]
	LIMIT @take
)
SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[Value1],
			[e].[ParentID]
		FROM
			[Parent] [e]
				INNER JOIN [CTE_1] [c_1] ON [e].[ParentID] = [c_1].[ParentID]
	) [t2]
WHERE
	[t2].[RowNumber] = 1
ORDER BY
	[t2].[ParentID] DESC

