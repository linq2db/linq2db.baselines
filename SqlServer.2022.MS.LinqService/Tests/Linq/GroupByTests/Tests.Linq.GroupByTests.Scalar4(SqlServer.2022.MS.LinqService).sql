BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[g_2].[MIN_2]
FROM
	(
		SELECT
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [MIN_1],
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [MIN_2]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[MIN_1] IS NOT NULL

