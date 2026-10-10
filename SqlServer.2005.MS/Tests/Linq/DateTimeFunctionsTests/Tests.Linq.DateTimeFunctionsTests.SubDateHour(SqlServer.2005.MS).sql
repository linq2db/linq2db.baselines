-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST((CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) AS Int), [t].[DateTimeValue]), DateAdd(hour, 100, [t].[DateTimeValue])) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

