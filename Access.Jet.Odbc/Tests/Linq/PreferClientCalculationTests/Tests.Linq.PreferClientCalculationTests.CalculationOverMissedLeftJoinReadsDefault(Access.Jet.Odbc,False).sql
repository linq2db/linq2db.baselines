-- Access.Jet.Odbc AccessODBC
SELECT
	[e].[Id],
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF([j].[Value1] IS NULL OR [j].[Value1] < 5, 'a', 'b'),
	Abs(IIF([j].[Value1] IS NULL, 0, [j].[Value1]) - 1),
	IIF([j].[Date] IS NULL, 1, DatePart('yyyy', [j].[Date])),
	IIF([j].[Date] IS NULL, 'n', IIF([j].[Date] > DateSerial(2000, 1, 1), 'y', 'n')),
	IIF([j].[Date] IS NULL, 'y', IIF([j].[Date] < DateSerial(2000, 1, 1), 'y', 'n')),
	IIF([j].[Date] IS NULL, 'n', IIF([j].[Date] > [e].[Date], 'y', 'n')),
	IIF([j].[Date] IS NULL, 'y', IIF([j].[Date] <= [e].[Date], 'y', 'n'))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

