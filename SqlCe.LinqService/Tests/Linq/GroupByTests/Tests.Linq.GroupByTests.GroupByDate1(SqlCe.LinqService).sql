BeforeExecute
-- SqlCe (asynchronously)

SELECT
	SUM([grp_1].[MoneyValue]) as [Sum_1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			DatePart(month, [grp].[DateTimeValue]) as [Month_1],
			DatePart(year, [grp].[DateTimeValue]) as [Year_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Month_1],
	[grp_1].[Year_1]

