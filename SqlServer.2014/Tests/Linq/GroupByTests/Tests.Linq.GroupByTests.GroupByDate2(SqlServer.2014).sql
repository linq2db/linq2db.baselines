BeforeExecute
-- SqlServer.2014

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_2],
	[grp_1].[Month_2]
FROM
	(
		SELECT
			DatePart(month, [grp].[DateTimeValue]) as [Month_1],
			DatePart(year, [grp].[DateTimeValue]) as [Year_1],
			[grp].[MoneyValue],
			DatePart(year, [grp].[DateTimeValue]) as [Year_2],
			DatePart(month, [grp].[DateTimeValue]) as [Month_2]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Month_1],
	[grp_1].[Year_1],
	[grp_1].[Year_2],
	[grp_1].[Month_2]

