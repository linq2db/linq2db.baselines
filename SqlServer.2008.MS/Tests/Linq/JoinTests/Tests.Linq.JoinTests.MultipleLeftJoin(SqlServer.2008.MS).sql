BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[childLeftJoin].[ChildID],
	[grandChildLeftJoin].[GrandChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [GrandChild] [grandChildLeftJoin] ON [t1].[ParentID] = [grandChildLeftJoin].[ParentID]
		LEFT JOIN [Child] [childLeftJoin] ON [t1].[ParentID] = [childLeftJoin].[ParentID]

