-- SqlServer.2012
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))),
	DatePart(month, Coalesce([grp_1].[c1], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)))
FROM
	(
		SELECT
			DATETIME2FROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0, 3) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- SqlServer.2012
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, Coalesce([grp_1].[c1], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))),
	DatePart(month, Coalesce([grp_1].[c1], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)))
FROM
	(
		SELECT
			DATETIME2FROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0, 3) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

