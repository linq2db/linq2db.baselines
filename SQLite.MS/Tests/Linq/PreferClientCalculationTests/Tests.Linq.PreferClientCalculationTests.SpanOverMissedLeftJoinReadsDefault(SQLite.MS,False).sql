-- SQLite.MS SQLite
DECLARE @value Text -- Time
SET     @value = 00:00:00

SELECT
	[e].[Id],
	CASE
		WHEN CAST(Coalesce([j].[Span], @value) AS Time) < CAST([e].[Span] AS Time)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN CAST(Coalesce([j].[Span], @value) AS Time) = CAST(@value AS Time)
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

