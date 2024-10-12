BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUM([t1].[MoneyValue]),
	DatePart(year, [t1].[Value_1]),
	DatePart(month, [t1].[Value_1])
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [Value_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Value_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUM([t1].[MoneyValue]),
	DatePart(year, [t1].[Value_1]),
	DatePart(month, [t1].[Value_1])
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [Value_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Value_1]

