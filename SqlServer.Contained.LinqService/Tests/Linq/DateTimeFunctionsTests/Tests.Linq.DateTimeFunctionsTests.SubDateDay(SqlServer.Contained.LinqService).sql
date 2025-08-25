BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

