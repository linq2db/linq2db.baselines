BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[MAX_1],
	[t1].[ID2] + 1,
	[t1].[ID2],
	[t1].[COUNT_1]
FROM
	(
		SELECT
			COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) as [ID2],
			MAX([g_1].[ChildID]) as [MAX_1],
			COUNT(IIF([g_1].[ChildID] > 10, 1, NULL)) as [COUNT_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]

