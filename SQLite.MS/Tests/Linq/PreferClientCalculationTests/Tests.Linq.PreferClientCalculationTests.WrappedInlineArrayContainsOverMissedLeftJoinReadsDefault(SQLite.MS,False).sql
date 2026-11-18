-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CASE
		WHEN 0 IN (Coalesce([j].[Value1], 0), 5) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Coalesce([j].[Value1], 0), 5) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Coalesce([j].[Value1], 0), 5) THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CASE
		WHEN 0 IN (Coalesce([j].[Value1], 0), 5) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Coalesce([j].[Value1], 0), 5) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Coalesce([j].[Value1], 0), 5) THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

