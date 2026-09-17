-- SqlCe
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], '0001-01-01 00:00:00.000')),
	DatePart(month, Coalesce([grp_1].[c1], '0001-01-01 00:00:00.000'))
FROM
	(
		SELECT
			CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- SqlCe
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], '0001-01-01 00:00:00.000')),
	DatePart(month, Coalesce([grp_1].[c1], '0001-01-01 00:00:00.000'))
FROM
	(
		SELECT
			CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)))) + CAST(DatePart(year, [grp].[DateTimeValue]) AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)))) + CAST(DatePart(month, [grp].[DateTimeValue]) AS NVarChar(2)) + '-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

