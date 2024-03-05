BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(IIF([g_1].[ChildID] > 30, 1, NULL)),
	(
		SELECT
			Sum([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_1].[ParentID] = [ch].[ParentID]
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

