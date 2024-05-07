BeforeExecute
-- SqlServer.2005

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime) as [Date_1],
			[grp].[MoneyValue],
			DatePart(year, CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime)) as [Year_1],
			DatePart(month, CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime)) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1],
	[grp_1].[Year_1],
	[grp_1].[Month_1]

