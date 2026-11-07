-- SqlServer.CS SqlServer.2025
SELECT
	[e].[Id],
	IIF(Coalesce([j].[Span], TIMEFROMPARTS(0, 0, 0, 0, 7)) < [e].[Span], N'y', N'n'),
	IIF(Coalesce([j].[Span], TIMEFROMPARTS(0, 0, 0, 0, 7)) = TIMEFROMPARTS(0, 0, 0, 0, 7), N'y', N'n')
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

