-- SqlServer.2005
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], CAST('1753-01-01T00:00:00.000' AS DATETIME))),
	DatePart(month, Coalesce([grp_1].[c1], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	(
		SELECT
			CAST(RIGHT(N'0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- SqlServer.2005
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], CAST('1753-01-01T00:00:00.000' AS DATETIME))),
	DatePart(month, Coalesce([grp_1].[c1], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	(
		SELECT
			CAST(RIGHT(N'0' + CAST(DatePart(year, [grp].[DateTimeValue]) AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST(DatePart(month, [grp].[DateTimeValue]) AS VarChar(2)), 2) + N'-01' AS DateTime) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

