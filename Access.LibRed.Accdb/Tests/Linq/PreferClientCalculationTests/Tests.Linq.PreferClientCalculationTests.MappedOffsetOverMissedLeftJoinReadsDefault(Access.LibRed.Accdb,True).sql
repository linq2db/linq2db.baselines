-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	[j].[Moment],
	[e].[Moment] as [Moment_1]
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DatePart('yyyy', CASE
		WHEN [j].[Moment] IS NULL THEN #0100-01-01#
		ELSE [j].[Moment]
	END)
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DatePart('yyyy', CASE
		WHEN [j].[Moment] IS NULL THEN #0100-01-01#
		ELSE [j].[Moment]
	END)
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

