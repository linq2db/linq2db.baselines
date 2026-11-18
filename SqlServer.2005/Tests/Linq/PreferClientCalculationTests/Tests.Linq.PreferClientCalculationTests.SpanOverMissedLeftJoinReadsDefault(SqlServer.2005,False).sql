-- SqlServer.2005
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Span], N'00:00:00') < [e].[Span] THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Span], N'00:00:00') = N'00:00:00' THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

