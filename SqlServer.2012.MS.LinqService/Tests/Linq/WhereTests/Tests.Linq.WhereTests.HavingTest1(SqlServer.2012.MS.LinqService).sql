BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 1

