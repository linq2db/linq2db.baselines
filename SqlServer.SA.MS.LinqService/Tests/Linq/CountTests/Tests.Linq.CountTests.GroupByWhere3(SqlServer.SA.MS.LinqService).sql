BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			[g_1].[ParentID] as [Key_1],
			COUNT(*) as [cond]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[cond] > 2 AND [g_2].[Key_1] < 5

