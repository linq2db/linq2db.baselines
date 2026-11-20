-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	(DateDiff_Big('d', [e].[Date], [e].[Date2]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [e].[Date], [e].[Date2]), [e].[Date]), [e].[Date2]) * 10000) / CASE
		WHEN [j].[Date] IS NULL OR [j].[Date2] IS NULL THEN NULL
		ELSE DateDiff_Big('d', IIF(IsNull([j].[Date]), #1899-12-30#, [j].[Date]), IIF(IsNull([j].[Date2]), #1899-12-30#, [j].[Date2])) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', IIF(IsNull([j].[Date]), #1899-12-30#, [j].[Date]), IIF(IsNull([j].[Date2]), #1899-12-30#, [j].[Date2])), IIF(IsNull([j].[Date]), #1899-12-30#, [j].[Date])), IIF(IsNull([j].[Date2]), #1899-12-30#, [j].[Date2])) * 10000
	END
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

