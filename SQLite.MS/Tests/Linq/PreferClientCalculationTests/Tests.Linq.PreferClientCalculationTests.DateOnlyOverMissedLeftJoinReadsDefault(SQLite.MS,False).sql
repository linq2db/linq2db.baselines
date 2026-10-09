-- SQLite.MS SQLite
DECLARE @bound  -- Date
SET     @bound = '2000-01-01'

SELECT
	[e].[Id],
	CASE
		WHEN Date(Coalesce([j].[Day], '0001-01-01')) > Date(@bound)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Date(Coalesce([j].[Day], '0001-01-01')) < Date(@bound)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Date(Coalesce([j].[Day], '0001-01-01')) > Date([e].[Day])
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Date(Coalesce([j].[Day], '0001-01-01')) <= Date([e].[Day])
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Day]
FROM
	[MissedDayEntity] [t1]

-- SQLite.MS SQLite
SELECT
	CAST(strftime('%Y', Coalesce([j].[Day], '0001-01-01')) AS INTEGER)
FROM
	[MissedDayEntity] [e]
		LEFT JOIN [MissedDayEntity] [j] ON [j].[Id] = [e].[Id] + 1000

