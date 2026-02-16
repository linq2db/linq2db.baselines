-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateDiff(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

