BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[a_QueryableChildren].[ParentID],
	[a_QueryableChildren].[ChildID]
FROM
	[Parent] [t1]
		INNER JOIN [Child] [a_QueryableChildren] ON [t1].[ParentID] = [a_QueryableChildren].[ParentID]

