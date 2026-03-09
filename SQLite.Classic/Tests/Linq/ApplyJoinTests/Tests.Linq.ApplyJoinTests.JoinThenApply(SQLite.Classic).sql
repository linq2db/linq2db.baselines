-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [g_1].[ParentID] = [c_1].[ParentID] AND [g_1].[ChildID] = [c_1].[ChildID]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

