-- SqlServer.2008.MS SqlServer.2008
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('1753-01-01T00:00:00.000' AS DATETIME)))
FROM
	[MissedMomentEntity] [e]
		LEFT JOIN [MissedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

