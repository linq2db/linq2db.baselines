-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [ch] ON [t1].[ParentID] = [ch].[ParentID]
WHERE
	[t1].[ParentID] >= 4

