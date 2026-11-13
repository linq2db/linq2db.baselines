-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take Integer -- Int32
SET     @take = 2

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
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC
LIMIT @take

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

