-- Access.Ace.Odbc AccessODBC
SELECT
	[e].[Id],
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) BOR 1,
	IIF([j].[Value1] IS NULL OR [j].[Value1] < 5, 'a', 'b'),
	IIF(IIF([j].[Value1] IS NULL, 0, [j].[Value1]) IN (0), 'y', 'n'),
	IIF(0 IN (IIF([j].[Value1] IS NULL, 0, [j].[Value1]), 5), 'y', 'n'),
	-IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF(NOT IIF([j].[Flag] IS NULL, False, [j].[Flag]), 't', 'f'),
	IIF(NOT (IIF([j].[Flag] IS NULL, False, [j].[Flag]) OR [e].[Id] < 0), 't', 'f'),
	Abs(IIF([j].[Value1] IS NULL, 0, [j].[Value1])) + 1,
	'x' + CStr(IIF([j].[Value1] IS NULL, 0, [j].[Value1])),
	ABS(IIF([j].[Value1] IS NULL, 0, [j].[Value1])) + 1,
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF([e].[Id] > 0, IIF([j].[Value1] IS NULL, 0, [j].[Value1]), 5) + 1,
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

