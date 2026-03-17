-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(*) > 1

