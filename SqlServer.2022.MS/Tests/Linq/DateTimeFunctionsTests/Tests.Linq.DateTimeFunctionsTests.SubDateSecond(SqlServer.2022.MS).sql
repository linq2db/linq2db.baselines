-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

