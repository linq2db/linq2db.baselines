BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

