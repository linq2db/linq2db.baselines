-- Sybase.Managed Sybase
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Span], '00:00:00.000') < [e].[Span] THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Span], '00:00:00.000') = '00:00:00.000'
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

