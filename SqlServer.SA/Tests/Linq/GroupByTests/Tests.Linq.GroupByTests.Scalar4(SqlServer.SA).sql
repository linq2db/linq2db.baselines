BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[MIN_2]
FROM
	(
		SELECT
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [MIN_1],
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [MIN_2]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [t1]
WHERE
	[t1].[MIN_1] IS NOT NULL

