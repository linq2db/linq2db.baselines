-- SqlCe

SELECT
	SUM([grp_1].[MoneyValue]) as [Sum_1],
	DatePart(year, [grp_1].[Date_1]) as [Year_1],
	DatePart(month, [grp_1].[Date_1]) as [Month_1]
FROM
	(
		SELECT
			CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

-- SqlCe

SELECT
	SUM([grp_1].[MoneyValue]) as [Sum_1],
	DatePart(year, [grp_1].[Date_1]) as [Year_1],
	DatePart(month, [grp_1].[Date_1]) as [Month_1]
FROM
	(
		SELECT
			CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

