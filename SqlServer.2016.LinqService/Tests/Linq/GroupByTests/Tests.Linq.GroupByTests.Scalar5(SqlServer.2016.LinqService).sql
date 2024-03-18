BeforeExecute
-- SqlServer.2016

SELECT
	(
		SELECT
			MAX([ch].[ParentID])
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ParentID] = [ch].[ParentID]
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

