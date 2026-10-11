-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] = [p].[ParentID] AND [g_1].[ChildID] IS NOT NULL
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

