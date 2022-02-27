BeforeExecute
-- SqlServer.2014

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

