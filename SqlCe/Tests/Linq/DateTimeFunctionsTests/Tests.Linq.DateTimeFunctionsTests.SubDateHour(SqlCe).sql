-- SqlCe
SELECT
	CAST((CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt), [t].[DateTimeValue]), DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

