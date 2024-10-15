BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

