BeforeExecute
-- SQLite.MS SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[Parent] [cp_1]
		INNER JOIN [Child] [cp] ON [cp_1].[ParentID] = [c_1].[ParentID] AND [cp_1].[ParentID] = [cp].[ParentID]
			CROSS JOIN [GrandChild] [c_1]

