BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

