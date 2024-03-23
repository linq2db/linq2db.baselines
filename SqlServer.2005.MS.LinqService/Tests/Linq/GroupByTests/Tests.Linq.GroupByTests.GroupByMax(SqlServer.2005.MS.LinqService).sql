BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			MAX([ch].[ParentID])
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ChildID] = [ch].[ChildID]
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ChildID]

