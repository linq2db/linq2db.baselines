-- SqlServer.2008.MS SqlServer.2008
DECLARE @bound Date
SET     @bound = CAST('2000-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS DATE)) > @bound
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS DATE)) < @bound
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS DATE)) > [e].[Day]
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS DATE)) <= [e].[Day]
			THEN N'y'
		ELSE N'n'
	END
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

