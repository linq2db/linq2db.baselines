-- SqlServer.Contained.MS SqlServer.2025
SELECT
	CAST((DateDiff_Big(day, [e].[Date], [e].[Date2]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [e].[Date], [e].[Date2]) AS Int), [e].[Date]), [e].[Date2]) / 100 AS Float) / CAST((DateDiff_Big(day, [j].[Date], [j].[Date2]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [j].[Date], [j].[Date2]) AS Int), [j].[Date]), [j].[Date2]) / 100 AS Float)
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

