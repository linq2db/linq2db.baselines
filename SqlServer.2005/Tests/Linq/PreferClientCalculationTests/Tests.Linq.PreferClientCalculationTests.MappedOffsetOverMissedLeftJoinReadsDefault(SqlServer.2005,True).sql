-- SqlServer.2005
SELECT
	[e].[Id],
	[j].[Moment],
	[e].[Moment]
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- SqlServer.2005
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2005
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

