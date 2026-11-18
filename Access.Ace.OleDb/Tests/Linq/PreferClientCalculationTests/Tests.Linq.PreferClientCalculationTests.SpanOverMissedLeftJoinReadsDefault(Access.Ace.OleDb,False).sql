-- Access.Ace.OleDb AccessOleDb
DECLARE @value DBTime -- Time
SET     @value = 00:00:00
DECLARE @value_1 DBTime -- Time
SET     @value_1 = 00:00:00
DECLARE @value_2 DBTime -- Time
SET     @value_2 = 00:00:00

SELECT
	[e].[Id],
	IIF(IIF([j].[Span] IS NULL, @value, [j].[Span]) < [e].[Span], 'y', 'n'),
	IIF(IIF([j].[Span] IS NULL, @value_1, [j].[Span]) = @value_2, 'y', 'n')
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

