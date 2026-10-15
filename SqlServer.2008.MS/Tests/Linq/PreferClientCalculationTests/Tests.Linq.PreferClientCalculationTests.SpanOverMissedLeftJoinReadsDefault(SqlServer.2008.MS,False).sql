-- SqlServer.2008.MS SqlServer.2008
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Span], CAST('00:00:00.0000000' AS TIME)) < [e].[Span]
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Span], CAST('00:00:00.0000000' AS TIME)) = CAST('00:00:00.0000000' AS TIME)
			THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

