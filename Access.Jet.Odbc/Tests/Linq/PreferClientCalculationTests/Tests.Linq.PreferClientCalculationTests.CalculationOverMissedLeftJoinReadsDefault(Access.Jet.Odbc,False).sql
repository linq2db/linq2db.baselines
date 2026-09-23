-- Access.Jet.Odbc AccessODBC
DECLARE @bound DateTime
SET     @bound = #2000-01-01#
DECLARE @bound DateTime
SET     @bound = #2000-01-01#

SELECT
	[e].[Id],
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF([j].[Value1] IS NULL OR [j].[Value1] < 5, 'a', 'b'),
	Abs(IIF([j].[Value1] IS NULL, 0, [j].[Value1]) - 1),
	[j].[Date],
	IIF(IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]) > CVar(?), 'y', 'n'),
	IIF(IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]) < CVar(?), 'y', 'n'),
	IIF(IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]) > [e].[Date], 'y', 'n'),
	IIF(IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]) <= [e].[Date], 'y', 'n')
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

