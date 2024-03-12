BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Sum([g_2].[ParentID])
FROM
	(
		SELECT
			[g_1].[ChildID],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [p] ON [g_1].[ParentID] = [p].[ParentID]
	) [g_2]
GROUP BY
	[g_2].[ChildID]

