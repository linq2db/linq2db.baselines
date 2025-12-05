-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[proj].[ParentID],
	[impl].[ParentID],
	[impl].[Value1]
FROM
	[Parent] [proj]
		INNER JOIN [Parent] [impl] ON [proj].[ParentID] = [impl].[ParentID]
WHERE
	[proj].[ParentID] = 2 OR [proj].[ParentID] = 3
ORDER BY
	[proj].[ParentID]

