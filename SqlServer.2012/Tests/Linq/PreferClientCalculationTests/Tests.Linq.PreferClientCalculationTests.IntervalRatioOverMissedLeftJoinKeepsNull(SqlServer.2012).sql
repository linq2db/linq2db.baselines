-- SqlServer.2012
SELECT
	CAST((CAST(DateDiff(day, [e].[Date], [e].[Date2]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [e].[Date], [e].[Date2]) AS BigInt) AS Int), [e].[Date]) AS DateTime2), [e].[Date2]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [e].[Date], [e].[Date2]) AS BigInt) AS Int), [e].[Date]) AS DateTime2), [e].[Date2]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [e].[Date], [e].[Date2]) AS BigInt) AS Int), [e].[Date]) AS DateTime2)), [e].[Date2]) AS BigInt) / 100 AS Float) / CAST((CAST(DateDiff(day, [j].[Date], [j].[Date2]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [j].[Date], [j].[Date2]) AS BigInt) AS Int), [j].[Date]) AS DateTime2), [j].[Date2]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [j].[Date], [j].[Date2]) AS BigInt) AS Int), [j].[Date]) AS DateTime2), [j].[Date2]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [j].[Date], [j].[Date2]) AS BigInt) AS Int), [j].[Date]) AS DateTime2)), [j].[Date2]) AS BigInt) / 100 AS Float)
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

