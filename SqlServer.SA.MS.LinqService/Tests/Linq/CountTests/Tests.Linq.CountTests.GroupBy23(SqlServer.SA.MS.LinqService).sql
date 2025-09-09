BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	COUNT(IIF([g_1].[ParentID] < 2, 1, NULL))
FROM
	[Parent] [g_1]
WHERE
	[g_1].[ParentID] > -1
GROUP BY
	[g_1].[Value1]

