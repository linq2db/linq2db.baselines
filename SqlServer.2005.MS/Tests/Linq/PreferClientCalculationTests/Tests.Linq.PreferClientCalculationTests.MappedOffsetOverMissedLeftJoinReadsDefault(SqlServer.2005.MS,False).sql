-- SqlServer.2005.MS SqlServer.2005
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)) > [e].[Moment]
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)) <= [e].[Moment]
			THEN N'y'
		ELSE N'n'
	END
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2005.MS SqlServer.2005
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

