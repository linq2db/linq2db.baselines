BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

