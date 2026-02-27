-- SqlServer.2022

SELECT
	CAST(DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

