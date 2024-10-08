BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[parent_1].[ParentID],
	[childLeftJoin].[ChildID],
	[grandChildLeftJoin].[GrandChildID]
FROM
	[Parent] [parent_1]
		LEFT JOIN [GrandChild] [grandChildLeftJoin] ON [parent_1].[ParentID] = [grandChildLeftJoin].[ParentID]
		LEFT JOIN [Child] [childLeftJoin] ON [parent_1].[ParentID] = [childLeftJoin].[ParentID]

