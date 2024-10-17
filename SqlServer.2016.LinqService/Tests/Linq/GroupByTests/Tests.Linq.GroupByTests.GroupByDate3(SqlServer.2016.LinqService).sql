BeforeExecute
-- SqlServer.2016

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[Date_1]),
	DatePart(month, [grp_1].[Date_1])
FROM
	(
		SELECT
			DATETIMEFROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

BeforeExecute
-- SqlServer.2016

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart(year, [grp_1].[Date_1]),
	DatePart(month, [grp_1].[Date_1])
FROM
	(
		SELECT
			DATETIMEFROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

