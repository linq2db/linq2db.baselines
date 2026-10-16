-- SqlServer.2019.MS SqlServer.2019
SELECT
	[e].[Id],
	[j].[Day],
	[e].[Day]
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Day]
FROM
	[MissedDayEntity] [t1]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	DatePart(year, Coalesce([j].[Day], DATEFROMPARTS(1, 1, 1)))
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

