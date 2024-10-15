BeforeExecute
-- SqlServer.2005

SELECT
	CAST(DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

