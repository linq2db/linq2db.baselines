-- SqlServer.2025.MS SqlServer.2025
SELECT
	CAST((DateDiff_Big(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS Int), [t].[DateTimeValue]), DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) / 100 AS Float) / 10000
FROM
	[LinqDataTypes] [t]

