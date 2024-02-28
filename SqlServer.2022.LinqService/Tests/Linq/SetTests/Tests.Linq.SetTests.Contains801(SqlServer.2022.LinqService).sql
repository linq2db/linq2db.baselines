BeforeExecute
-- SqlServer.2022

SELECT
	[ch].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [gc_1]
		INNER JOIN [Child] [ch] ON [gc_1].[ParentID] = [ch].[ParentID]
		INNER JOIN [GrandChild] [gc] ON [ch].[ChildID] = [gc].[ChildID]
WHERE
	(2 = 1 AND [ch].[ChildID] = 11 AND [gc].[GrandChildID] = 111 OR 2 = 2 AND [ch].[ChildID] = 21 AND [gc].[GrandChildID] = 211)

