-- Access.Jet.OleDb AccessOleDb
SELECT
	[e].[Id],
	[j].[Moment],
	[e].[Moment] as [Moment_1]
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

