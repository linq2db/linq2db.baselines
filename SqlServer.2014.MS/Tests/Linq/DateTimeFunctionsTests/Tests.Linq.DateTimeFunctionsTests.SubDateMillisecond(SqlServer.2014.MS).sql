BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

