BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(IIF([g_1].[ParentID] + 1 < 3, 1, NULL))
FROM
	[Parent] [g_1]
WHERE
	[g_1].[ParentID] + 2 > 1
GROUP BY
	[g_1].[Value1]

