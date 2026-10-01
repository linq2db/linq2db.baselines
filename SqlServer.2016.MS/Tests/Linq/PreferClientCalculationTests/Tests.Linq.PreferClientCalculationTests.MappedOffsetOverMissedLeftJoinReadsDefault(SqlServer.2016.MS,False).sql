-- SqlServer.2016.MS SqlServer.2016
SELECT
	[e].[Id],
	IIF(Coalesce([j].[Moment], DATETIMEFROMPARTS(1753, 1, 1, 0, 0, 0, 0)) > [e].[Moment], N'y', N'n'),
	IIF(Coalesce([j].[Moment], DATETIMEFROMPARTS(1753, 1, 1, 0, 0, 0, 0)) <= [e].[Moment], N'y', N'n')
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MappedMomentEntity] [t1]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	DatePart(year, Coalesce([j].[Moment], DATETIMEFROMPARTS(1753, 1, 1, 0, 0, 0, 0)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2016.MS SqlServer.2016
SELECT
	DatePart(year, Coalesce([j].[Moment], DATETIMEOFFSETFROMPARTS(1, 1, 1, 0, 0, 0, 0, 0, 0, 7)))
FROM
	[MappedMomentEntity] [e]
		LEFT JOIN [MappedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

