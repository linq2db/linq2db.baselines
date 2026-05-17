-- SqlServer.2025

SELECT
	CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

