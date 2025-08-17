BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	MAX([g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

