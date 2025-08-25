BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] >= 4

