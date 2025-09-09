BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[i].[ParentID],
	[i].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [i] ON [t].[ParentID] = [i].[ParentID]

