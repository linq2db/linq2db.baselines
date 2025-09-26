BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[g_1].[Id] as [Key_1],
	SUM([g_1].[Id]) as [SUM_1]
FROM
	(SELECT CAST(NULL AS Int) [Id] WHERE 1 = 0) [g_1]
GROUP BY
	[g_1].[Id]

