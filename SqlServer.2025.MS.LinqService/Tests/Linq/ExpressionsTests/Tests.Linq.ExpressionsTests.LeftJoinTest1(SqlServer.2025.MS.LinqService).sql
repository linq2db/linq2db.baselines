BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[i].[ParentID],
	[i].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [i] ON [t].[ParentID] = [i].[ParentID]

