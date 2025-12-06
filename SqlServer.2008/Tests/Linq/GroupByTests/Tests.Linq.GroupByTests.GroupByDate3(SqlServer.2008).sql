-- SqlServer.2008

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[Date_1]),
	DatePart(month, [grp_1].[Date_1])
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

-- SqlServer.2008

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[Date_1]),
	DatePart(month, [grp_1].[Date_1])
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

