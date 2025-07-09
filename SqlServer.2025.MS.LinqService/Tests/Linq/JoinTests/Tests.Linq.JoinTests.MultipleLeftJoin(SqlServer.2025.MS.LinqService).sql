BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[parent_1].[ParentID],
	[childLeftJoin].[ChildID],
	[grandChildLeftJoin].[GrandChildID]
FROM
	[Parent] [parent_1]
		LEFT JOIN [GrandChild] [grandChildLeftJoin] ON [parent_1].[ParentID] = [grandChildLeftJoin].[ParentID]
		LEFT JOIN [Child] [childLeftJoin] ON [parent_1].[ParentID] = [childLeftJoin].[ParentID]

