BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p1] ON [c_1].[ParentID] = [p1].[ParentID]

