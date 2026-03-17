-- SqlServer.2005

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[c1]),
	DatePart(month, [grp_1].[c1])
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- SqlServer.2005

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[c1]),
	DatePart(month, [grp_1].[c1])
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

