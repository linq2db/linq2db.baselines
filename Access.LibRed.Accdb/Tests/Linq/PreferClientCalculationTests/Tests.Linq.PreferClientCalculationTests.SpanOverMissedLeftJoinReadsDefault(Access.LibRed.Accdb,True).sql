-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	[j].[Span],
	[e].[Span] as [Span_1]
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

