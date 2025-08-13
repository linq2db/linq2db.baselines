BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[i].[ParentID],
	[i].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [i] ON [t].[ParentID] = [i].[ParentID]

