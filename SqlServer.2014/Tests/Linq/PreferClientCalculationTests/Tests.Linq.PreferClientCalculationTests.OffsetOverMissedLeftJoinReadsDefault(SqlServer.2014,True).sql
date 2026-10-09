-- SqlServer.2014
SELECT
	[e].[Id],
	[j].[Moment],
	[e].[Moment]
FROM
	[MissedMomentEntity] [e]
		LEFT JOIN [MissedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MissedMomentEntity] [t1]

-- SqlServer.2014
SELECT
	DatePart(year, Coalesce([j].[Moment], DATETIMEOFFSETFROMPARTS(1, 1, 1, 0, 0, 0, 0, 0, 0, 7)))
FROM
	[MissedMomentEntity] [e]
		LEFT JOIN [MissedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

