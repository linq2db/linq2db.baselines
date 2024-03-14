BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	(
		SELECT
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ParentID] = [ch].[ParentID] AND [ch].[ChildID] > 0
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

