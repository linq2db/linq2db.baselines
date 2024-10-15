BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

