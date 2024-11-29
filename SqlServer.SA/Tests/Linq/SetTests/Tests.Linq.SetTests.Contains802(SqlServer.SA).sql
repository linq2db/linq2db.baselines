BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
		INNER JOIN [GrandChild] [gc] ON [ch].[ChildID] = [gc].[ChildID]
WHERE
	[p].[ParentID] = 1 AND [ch].[ChildID] = 11 AND [gc].[GrandChildID] = 111 OR
	[p].[ParentID] = 2 AND [ch].[ChildID] = 21 AND [gc].[GrandChildID] = 211

