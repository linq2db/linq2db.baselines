-- SqlServer.2019.MS SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Int), [t].[DateTimeValue]), DateAdd(hour, 100, [t].[DateTimeValue])) / 100 AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

