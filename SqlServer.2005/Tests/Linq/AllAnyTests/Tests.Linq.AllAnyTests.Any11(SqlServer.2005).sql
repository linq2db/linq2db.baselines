BeforeExecute
-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL
		INNER JOIN [Child] [c_1] ON [g_1].[ChildID] = [c_1].[ChildID]
		INNER JOIN [LinqDataTypes] [t] ON [c_1].[ParentID] = [t].[ID]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[c_1].[ParentID] = [x].[ParentID] AND
			[x].[ParentID] IS NOT NULL AND
			[c_1].[ChildID] = [x].[ChildID] AND
			[x].[ChildID] IS NOT NULL AND
			[x].[ParentID] < 0 AND
			[x].[ParentID] IS NOT NULL
	)

