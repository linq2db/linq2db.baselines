BeforeExecute
-- SqlServer.2017

SELECT
	Count(IIF([g_1].[ChildID] > 30, 1, NULL)),
	(
		SELECT
			Sum([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ParentID] = [ch].[ParentID] AND [ch].[ChildID] > 30
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

