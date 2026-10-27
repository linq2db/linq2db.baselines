-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[c_1].[ParentID],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [t1].[ParentID]
INTERSECT
SELECT
	[p].[ParentID],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p]

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

