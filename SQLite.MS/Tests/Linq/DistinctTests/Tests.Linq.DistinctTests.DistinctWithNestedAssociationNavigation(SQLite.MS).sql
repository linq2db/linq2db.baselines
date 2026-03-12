-- SQLite.MS SQLite

SELECT DISTINCT
	[gc].[GrandChildID],
	[a_Parent].[Value1]
FROM
	[GrandChild] [gc]
		LEFT JOIN ([Child] [a_Child]
			LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID])
		ON [gc].[ParentID] = [a_Child].[ParentID] AND [gc].[ChildID] = [a_Child].[ChildID]
ORDER BY
	[gc].[GrandChildID]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[GrandChild] [t1]
		LEFT JOIN ([Child] [a_Child]
			LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID])
		ON [t1].[ParentID] = [a_Child].[ParentID] AND [t1].[ChildID] = [a_Child].[ChildID]

