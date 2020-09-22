BeforeExecute
-- SqlServer.2008

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
		INNER JOIN [GrandChild] [g_1] ON [t].[ParentID] = [g_1].[ParentID] AND [g_1].[ChildID] > 22
ORDER BY
	[g_1].[ParentID]

