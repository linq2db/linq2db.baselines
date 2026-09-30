-- SqlServer.2012
SELECT
	CAST((CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue]), DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue]), DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue])), DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

