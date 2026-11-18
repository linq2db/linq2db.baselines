-- Sybase.Managed Sybase
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Moment], CAST('1753-01-01 00:00:00.000' AS DateTime)) > [e].[Moment]
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Moment], CAST('1753-01-01 00:00:00.000' AS DateTime)) <= [e].[Moment]
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- Sybase.Managed Sybase
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01 00:00:00.000' AS DateTime)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- Sybase.Managed Sybase
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01 00:00:00.000' AS DateTime)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

