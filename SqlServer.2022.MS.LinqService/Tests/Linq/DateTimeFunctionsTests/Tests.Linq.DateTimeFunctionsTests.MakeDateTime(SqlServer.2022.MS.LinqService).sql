BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			DatePart(year, DateAdd(month, (1320 + [t].[ID]) - 1, 0)) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

