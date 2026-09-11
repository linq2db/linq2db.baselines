-- SqlServer.2022
SELECT
	CAST((DateDiff_Big(day, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Int), [t].[DateTimeValue]), DateAdd(minute, 100, [t].[DateTimeValue])) / 100 AS Float) / 600000000
FROM
	[LinqDataTypes] [t]

