-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	CASE
		WHEN CASE
			WHEN [j].[Moment] IS NULL THEN #0100-01-01#
			ELSE [j].[Moment]
		END > [e].[Moment]
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN CASE
			WHEN [j].[Moment] IS NULL THEN #0100-01-01#
			ELSE [j].[Moment]
		END <= [e].[Moment]
			THEN 'y'
		ELSE 'n'
	END
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

