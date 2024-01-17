BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

