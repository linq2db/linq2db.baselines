-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
WHERE
	[c_1].[ChildID] > 2

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

