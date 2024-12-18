BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[d].[Day_2]
FROM
	(
		SELECT
			DatePart(day, CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-02-24 00:00:00' AS DateTime)) as [Day_1],
			CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-02-24 00:00:00' AS DateTime) as [Day_2]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	[d].[Day_1] > 0 AND [d].[Day_1] IS NOT NULL

