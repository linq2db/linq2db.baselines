BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

