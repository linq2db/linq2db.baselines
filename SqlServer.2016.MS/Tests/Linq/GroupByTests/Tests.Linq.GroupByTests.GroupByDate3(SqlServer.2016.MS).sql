BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			DATETIMEFROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0) as [Date_1],
			[grp].[MoneyValue],
			DatePart(year, [grp_1].[Date_1]) as [Year_1],
			DatePart(month, [grp_1].[Date_1]) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

