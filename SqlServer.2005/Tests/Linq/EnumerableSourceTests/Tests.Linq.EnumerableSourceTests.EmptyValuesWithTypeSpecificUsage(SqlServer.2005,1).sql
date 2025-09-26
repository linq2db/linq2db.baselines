BeforeExecute
-- SqlServer.2005

SELECT
	[g_1].[Id],
	SUM([g_1].[Id])
FROM
	(SELECT CAST(NULL AS Int) [Id] WHERE 1 = 0) [g_1]
GROUP BY
	[g_1].[Id]

