BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	SUM([t1].[MoneyValue]),
	[t1].[Year_1],
	[t1].[Month_1]
FROM
	(
		SELECT
			DatePart(month, [grp].[DateTimeValue]) as [Month_1],
			DatePart(year, [grp].[DateTimeValue]) as [Year_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Month_1],
	[t1].[Year_1]

