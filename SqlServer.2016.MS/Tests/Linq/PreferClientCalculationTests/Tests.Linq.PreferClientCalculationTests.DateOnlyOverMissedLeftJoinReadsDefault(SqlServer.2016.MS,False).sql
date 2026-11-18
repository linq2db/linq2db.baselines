-- SqlServer.2016.MS SqlServer.2016
DECLARE @bound Date
SET     @bound = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[e].[Id],
	IIF(Coalesce([j].[Day], DATEFROMPARTS(1, 1, 1)) > @bound, N'y', N'n'),
	IIF(Coalesce([j].[Day], DATEFROMPARTS(1, 1, 1)) < @bound, N'y', N'n'),
	IIF(Coalesce([j].[Day], DATEFROMPARTS(1, 1, 1)) > [e].[Day], N'y', N'n'),
	IIF(Coalesce([j].[Day], DATEFROMPARTS(1, 1, 1)) <= [e].[Day], N'y', N'n')
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Day]
FROM
	[MissedDayEntity] [t1]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	DatePart(year, Coalesce([j].[Day], DATEFROMPARTS(1, 1, 1)))
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

