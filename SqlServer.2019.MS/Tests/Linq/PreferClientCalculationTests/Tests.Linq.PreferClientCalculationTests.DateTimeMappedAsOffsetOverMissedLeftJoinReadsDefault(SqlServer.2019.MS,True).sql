-- SqlServer.2019.MS SqlServer.2019
SELECT
	DatePart(year, Coalesce([j].[Moment], DATETIMEFROMPARTS(1753, 1, 1, 0, 0, 0, 0)))
FROM
	[MissedMomentEntity] [e]
		LEFT JOIN [MissedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

