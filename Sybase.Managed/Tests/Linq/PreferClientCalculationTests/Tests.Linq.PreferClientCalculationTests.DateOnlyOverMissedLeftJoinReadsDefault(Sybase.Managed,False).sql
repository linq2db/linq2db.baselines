-- Sybase.Managed Sybase
DECLARE @bound Date
SET     @bound = '2000-01-01 00:00:00.000'

SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS Date)) > @bound
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS Date)) < @bound
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS Date)) > [e].[Day]
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce([j].[Day], CAST('0001-01-01' AS Date)) <= [e].[Day]
			THEN 'y'
		ELSE 'n'
	END
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

