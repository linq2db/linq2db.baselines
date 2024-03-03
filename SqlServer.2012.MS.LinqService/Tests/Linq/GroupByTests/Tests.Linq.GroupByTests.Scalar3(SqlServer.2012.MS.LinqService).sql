BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 0 AND [g_1].[ParentID] = [ch].[ParentID]
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

