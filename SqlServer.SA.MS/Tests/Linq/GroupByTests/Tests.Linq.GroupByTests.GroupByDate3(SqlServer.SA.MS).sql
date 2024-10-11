BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	SUM([t1].[MoneyValue]),
	DatePart(year, [t1].[Value_1]),
	DatePart(month, [t1].[Value_1])
FROM
	(
		SELECT
			DATETIMEFROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0) as [Value_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Value_1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	SUM([t1].[MoneyValue]),
	DatePart(year, [t1].[Value_1]),
	DatePart(month, [t1].[Value_1])
FROM
	(
		SELECT
			DATETIMEFROMPARTS(DatePart(year, [grp].[DateTimeValue]), DatePart(month, [grp].[DateTimeValue]), 1, 0, 0, 0, 0) as [Value_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [t1]
GROUP BY
	[t1].[Value_1]

