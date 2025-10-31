BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1],
			COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) as [Count_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[Count_1] > 2 OR [g_2].[Key_1] > 2

