BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL
		INNER JOIN [Child] [c_1] ON [g_1].[ChildID] = [c_1].[ChildID]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[p].[ParentID] = [x].[ParentID] AND
			[x].[ParentID] IS NOT NULL AND
			[x].[ParentID] < 0 AND
			[x].[ParentID] IS NOT NULL
	)

