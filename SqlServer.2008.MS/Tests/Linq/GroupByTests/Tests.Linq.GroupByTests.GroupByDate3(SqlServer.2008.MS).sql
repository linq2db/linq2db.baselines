BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Sum([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			DateAdd(month, ((DatePart(year, [grp].[DateTimeValue]) - 1900) * 12 + DatePart(month, [grp].[DateTimeValue])) - 1, 0) as [c1],
			[grp].[MoneyValue],
			DatePart(year, DateAdd(month, ((DatePart(year, [grp].[DateTimeValue]) - 1900) * 12 + DatePart(month, [grp].[DateTimeValue])) - 1, 0)) as [Year_1],
			DatePart(month, DateAdd(month, ((DatePart(year, [grp].[DateTimeValue]) - 1900) * 12 + DatePart(month, [grp].[DateTimeValue])) - 1, 0)) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

