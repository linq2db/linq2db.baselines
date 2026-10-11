-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] IS NOT NULL AND [g_1].[ParentID] = [p].[ParentID]
	), 1, 0)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

