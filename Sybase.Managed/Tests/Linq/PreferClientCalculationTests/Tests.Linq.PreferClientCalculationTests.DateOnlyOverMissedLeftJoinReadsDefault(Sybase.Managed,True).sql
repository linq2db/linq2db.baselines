-- Sybase.Managed Sybase
SELECT
	[e].[Id],
	[j].[Day],
	[e].[Day]
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Day]
FROM
	[MissedDayEntity] [t1]

-- Sybase.Managed Sybase
SELECT
	DatePart(year, Coalesce([j].[Day], CAST('0001-01-01' AS Date)))
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

