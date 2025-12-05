-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[g_2].[Min_1]
FROM
	(
		SELECT
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [cond],
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [Min_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[cond] IS NOT NULL

