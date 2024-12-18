BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[d].[Date_1]
FROM
	(
		SELECT
			DatePart(day, [t].[DateTimeValue]) as [Day_1],
			DateAdd(dd, DateDiff(dd, 0, [t].[DateTimeValue]), 0) as [Date_1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	[d].[Day_1] > 0 AND [d].[Day_1] IS NOT NULL

