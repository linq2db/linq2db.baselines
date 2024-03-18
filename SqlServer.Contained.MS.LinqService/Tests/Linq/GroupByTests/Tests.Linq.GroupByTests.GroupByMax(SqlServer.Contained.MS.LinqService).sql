BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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

