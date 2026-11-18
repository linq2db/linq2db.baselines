-- SqlServer.2008.MS SqlServer.2008
SELECT
	[e].[Id],
	[j].[Day],
	[e].[Day]
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Day]
FROM
	[MissedDayEntity] [t1]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	DatePart(year, Coalesce([j].[Day], CAST('0001-01-01' AS DATE)))
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

