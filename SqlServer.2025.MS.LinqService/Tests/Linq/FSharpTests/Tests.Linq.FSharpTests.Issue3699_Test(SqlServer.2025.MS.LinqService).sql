BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[o].[ParentID],
	[o].[Value1],
	[o].[ParentID],
	[o].[Value1],
	[pet].[ParentID],
	[pet].[Value1]
FROM
	[Parent] [o]
		LEFT JOIN [Parent] [pet] ON [o].[ParentID] = [pet].[ParentID]

