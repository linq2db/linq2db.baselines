-- Access.Jet.Odbc AccessODBC
SELECT
	[e].[Id],
	IIF(IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]) > [e].[Moment], 'y', 'n'),
	IIF(IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]) <= [e].[Moment], 'y', 'n')
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	DatePart('yyyy', IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Jet.Odbc AccessODBC
SELECT
	DatePart('yyyy', IIF([j].[Moment] IS NULL, #0100-01-01#, [j].[Moment]))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

