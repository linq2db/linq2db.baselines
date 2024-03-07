BeforeExecute
-- SqlServer.2012

SELECT
	[t_1].[c1],
	[t_1].[c2]
FROM
	(
		SELECT
			DatePart(year, DateAdd(month, (1320 + [t].[ID]) - 1, 0)) as [Year_1],
			(1320 + [t].[ID]) - 1 as [c1],
			0 as [c2]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

