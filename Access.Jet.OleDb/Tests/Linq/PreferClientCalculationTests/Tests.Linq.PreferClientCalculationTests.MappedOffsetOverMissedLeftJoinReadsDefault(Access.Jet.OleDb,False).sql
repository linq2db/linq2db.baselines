-- Access.Jet.OleDb AccessOleDb
SELECT
	[e].[Id],
	IIF(IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]) > [e].[Moment], 'y', 'n'),
	IIF(IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]) <= [e].[Moment], 'y', 'n')
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	DatePart('yyyy', IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Jet.OleDb AccessOleDb
SELECT
	DatePart('yyyy', IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

