-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[e].[Id],
	[j].[Span],
	[e].[Span]
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

