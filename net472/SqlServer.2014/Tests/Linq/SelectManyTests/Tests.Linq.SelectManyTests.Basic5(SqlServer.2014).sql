BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[Child] [cp]
		INNER JOIN [Parent] [a_Parent] ON [cp].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [c_1] ON [a_Parent].[ParentID] = [c_1].[ParentID]

