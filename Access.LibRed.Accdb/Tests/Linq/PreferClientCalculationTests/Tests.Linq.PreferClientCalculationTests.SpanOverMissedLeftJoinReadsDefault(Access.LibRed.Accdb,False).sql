-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Time
SET     @value = 00:00:00

SELECT
	[e].[Id],
	IIF(IIF([j].[Span] IS NULL, @value, [j].[Span]) < [e].[Span], 'y', 'n'),
	IIF(IIF([j].[Span] IS NULL, @value, [j].[Span]) = @value, 'y', 'n')
FROM
	[MissedSpanEntity] [e]
		LEFT JOIN [MissedSpanEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	[MissedSpanEntity] [t1]

