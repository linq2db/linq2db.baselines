-- SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	[p].[Value1],
	ROW_NUMBER() OVER (PARTITION BY [p].[Value1])
FROM
	[Parent] [p]

