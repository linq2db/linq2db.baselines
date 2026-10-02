-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST((CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue]) AS DateTime2), DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue]) AS DateTime2), DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue]) AS DateTime2)), DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) / 100 AS Float) / 10000
FROM
	[LinqDataTypes] [t]

