BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

