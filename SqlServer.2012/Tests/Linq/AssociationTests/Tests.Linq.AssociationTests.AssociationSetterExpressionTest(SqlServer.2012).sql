-- SqlServer.2012

SELECT TOP (1)
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

