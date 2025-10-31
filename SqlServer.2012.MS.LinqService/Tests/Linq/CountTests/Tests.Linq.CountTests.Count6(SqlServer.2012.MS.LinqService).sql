BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]
WHERE
	[t1].[ParentID] > 2

