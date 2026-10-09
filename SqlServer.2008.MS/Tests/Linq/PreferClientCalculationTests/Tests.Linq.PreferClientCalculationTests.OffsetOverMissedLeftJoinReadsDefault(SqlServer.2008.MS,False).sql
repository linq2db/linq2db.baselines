-- SqlServer.2008.MS SqlServer.2008
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Moment], CAST('0001-01-01T00:00:00.0000000+00:00' AS DATETIMEOFFSET)) > [e].[Moment]
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Moment], CAST('0001-01-01T00:00:00.0000000+00:00' AS DATETIMEOFFSET)) <= [e].[Moment]
			THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedMomentEntity] [e]
		LEFT JOIN [MissedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Moment]
FROM
	[MissedMomentEntity] [t1]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	DatePart(year, Coalesce([j].[Moment], CAST('0001-01-01T00:00:00.0000000+00:00' AS DATETIMEOFFSET)))
FROM
	[MissedMomentEntity] [e]
		LEFT JOIN [MissedMomentEntity] [j] ON [j].[Id] = [e].[Id] + 1000

