BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID]
		INNER JOIN [Child] [c_1] ON [g_1].[ChildID] = [c_1].[ChildID]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[p].[ParentID] = [x].[ParentID] AND [x].[ParentID] < 0
	)

