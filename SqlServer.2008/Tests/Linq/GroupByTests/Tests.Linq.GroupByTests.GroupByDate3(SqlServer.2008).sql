-- SqlServer.2008
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))),
	DatePart(month, Coalesce([grp_1].[c1], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)))
FROM
	(
		SELECT
			CAST(RIGHT(N'0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- SqlServer.2008
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))),
	DatePart(month, Coalesce([grp_1].[c1], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)))
FROM
	(
		SELECT
			CAST(RIGHT(N'0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime2) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

