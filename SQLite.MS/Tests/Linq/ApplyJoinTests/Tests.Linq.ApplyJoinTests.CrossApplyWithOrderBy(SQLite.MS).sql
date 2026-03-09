-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
ORDER BY
	[c_1].[ChildID] DESC

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

