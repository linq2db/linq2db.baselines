-- Access.Jet.Odbc AccessODBC
DECLARE @value Time
SET     @value = 00:00:00
DECLARE @value Time
SET     @value = 00:00:00
DECLARE @value Time
SET     @value = 00:00:00

SELECT
	[e].[Id],
	IIF(IIF([j].[Span] IS NULL, ?, [j].[Span]) < [e].[Span], 'y', 'n'),
	IIF(IIF([j].[Span] IS NULL, ?, [j].[Span]) = ?, 'y', 'n')
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

