-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[gc].[ParentID],
	[gc].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [gc] ON [p].[ParentID] = [gc].[ParentID]
WHERE
	[gc].[ChildID] = 22

