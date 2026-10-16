-- SqlServer.2008.MS SqlServer.2008
SELECT
	[e].[Id],
	[j].[Moment],
	[e].[Moment]
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('0001-01-01T00:00:00.0000000+00:00' AS DATETIMEOFFSET)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

