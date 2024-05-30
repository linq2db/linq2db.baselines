BeforeExecute
-- SqlServer.2017

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

