BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			MAX([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ChildID] = [ch].[ChildID]
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ChildID]

