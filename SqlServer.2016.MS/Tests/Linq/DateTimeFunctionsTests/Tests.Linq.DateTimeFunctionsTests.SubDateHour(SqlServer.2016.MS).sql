-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

