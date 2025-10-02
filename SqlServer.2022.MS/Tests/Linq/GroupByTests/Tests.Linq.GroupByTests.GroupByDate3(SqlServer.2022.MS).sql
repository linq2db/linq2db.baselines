BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[Date_1]),
	DatePart(month, [grp_1].[Date_1])
FROM
	(
		SELECT
			DATETIME2FROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0, 3) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[Date_1]),
	DatePart(month, [grp_1].[Date_1])
FROM
	(
		SELECT
			DATETIME2FROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0, 3) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

