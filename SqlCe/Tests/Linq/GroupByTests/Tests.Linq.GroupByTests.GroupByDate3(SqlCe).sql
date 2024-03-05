BeforeExecute
-- SqlCe

SELECT
	Sum([grp_1].[MoneyValue]) as [Sum_1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			Convert(Datetime, REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) as NVARCHAR(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) as NVARCHAR(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) as NVARCHAR(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) as NVARCHAR(2)) + '-01') as [c1],
			[grp].[MoneyValue],
			DatePart(year, Convert(Datetime, REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) as NVARCHAR(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) as NVARCHAR(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) as NVARCHAR(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) as NVARCHAR(2)) + '-01')) as [Year_1],
			DatePart(month, Convert(Datetime, REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) as NVARCHAR(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) as NVARCHAR(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) as NVARCHAR(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) as NVARCHAR(2)) + '-01')) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

