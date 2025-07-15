BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[gc].[ParentID],
	[gc].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [gc] ON [p].[ParentID] = [gc].[ParentID]
WHERE
	[gc].[ChildID] = 22

