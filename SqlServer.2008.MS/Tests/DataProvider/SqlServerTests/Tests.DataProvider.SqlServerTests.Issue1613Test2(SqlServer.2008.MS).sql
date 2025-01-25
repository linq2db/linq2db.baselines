BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CAST([g_1].[dt] AS Date) as [Key_1]
		FROM
			[Issue1613] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST([r].[dt] AS Date)
FROM
	[Issue1613] [r]

