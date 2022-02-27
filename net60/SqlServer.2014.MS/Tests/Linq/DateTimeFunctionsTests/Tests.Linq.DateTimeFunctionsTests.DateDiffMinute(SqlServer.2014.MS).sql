BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

