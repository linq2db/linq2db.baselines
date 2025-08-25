BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
		INNER JOIN [Child] [g_1] ON [t].[ParentID] = [g_1].[ParentID]
WHERE
	Abs([g_1].[ChildID]) > 3
ORDER BY
	[g_1].[ParentID]

