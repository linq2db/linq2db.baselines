BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(IIF([g_1].[ParentID] < 2, 1, NULL))
FROM
	[Parent] [g_1]
WHERE
	[g_1].[ParentID] > -1
GROUP BY
	[g_1].[Value1]

