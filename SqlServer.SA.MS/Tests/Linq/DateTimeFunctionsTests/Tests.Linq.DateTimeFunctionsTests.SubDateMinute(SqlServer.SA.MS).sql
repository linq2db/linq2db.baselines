-- SqlServer.SA.MS SqlServer.2019

SELECT
	CAST(DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

