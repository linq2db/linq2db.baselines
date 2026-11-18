-- Sybase.Managed Sybase
SELECT
	CAST((CAST(DateDiff(day, [e].[Date], [e].[Date2]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [e].[Date], [e].[Date2]) AS BigInt), [e].[Date]), [e].[Date2]) AS BigInt) * 10000 AS Float) / CAST((CAST(DateDiff(day, [j].[Date], [j].[Date2]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [j].[Date], [j].[Date2]) AS BigInt), [j].[Date]), [j].[Date2]) AS BigInt) * 10000 AS Float)
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

