BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

