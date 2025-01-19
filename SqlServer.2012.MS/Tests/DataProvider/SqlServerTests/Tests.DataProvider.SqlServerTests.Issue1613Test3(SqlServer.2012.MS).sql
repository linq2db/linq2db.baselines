BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CAST([g_1].[dt] AS Time) as [Key_1]
		FROM
			[Issue1613] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT DISTINCT
	CAST([r].[dt] AS Time)
FROM
	[Issue1613] [r]

