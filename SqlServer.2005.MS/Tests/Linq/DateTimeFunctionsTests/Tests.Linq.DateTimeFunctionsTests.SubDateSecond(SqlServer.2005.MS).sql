BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

