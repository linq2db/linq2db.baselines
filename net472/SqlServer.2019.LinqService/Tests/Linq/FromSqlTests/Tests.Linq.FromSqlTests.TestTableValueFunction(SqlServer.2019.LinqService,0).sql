BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [t]
		CROSS APPLY GetParentByID([t].[ParentID]) [p]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = [t].[ParentID]

