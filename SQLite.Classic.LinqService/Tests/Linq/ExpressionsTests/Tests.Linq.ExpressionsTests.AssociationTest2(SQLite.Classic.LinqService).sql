BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[gc].[ParentID],
	[gc].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [gc] ON [p].[ParentID] = [gc].[ParentID] AND [gc].[ParentID] IS NOT NULL
WHERE
	[gc].[ChildID] = 22 AND [gc].[ChildID] IS NOT NULL

