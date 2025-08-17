BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
		INNER JOIN [GrandChild] [g_1] ON [t].[ParentID] = [g_1].[ParentID]
WHERE
	[g_1].[ChildID] > 22
ORDER BY
	[g_1].[ParentID]

