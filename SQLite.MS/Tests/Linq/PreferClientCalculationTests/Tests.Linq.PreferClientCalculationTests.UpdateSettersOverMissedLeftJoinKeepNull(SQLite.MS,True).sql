-- SQLite.MS SQLite
UPDATE
	[MissedJoinEntity]
SET
	[Name] = CAST([j].[Value1] AS NVarChar(11))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
WHERE
	[MissedJoinEntity].[Id] = [e].[Id]

-- SQLite.MS SQLite
SELECT
	[e].[Name]
FROM
	[MissedJoinEntity] [e]

-- SQLite.MS SQLite
UPDATE
	[MissedJoinEntity]
SET
	[Name] = 'x'

-- SQLite.MS SQLite
UPDATE
	[MissedJoinEntity]
SET
	[Name] = CAST((
		SELECT
			[t].[Value1]
		FROM
			[MissedJoinEntity] [t]
		WHERE
			[t].[Id] = [MissedJoinEntity].[Id] + 1000
		LIMIT 1
	) + 1 AS NVarChar(11))

-- SQLite.MS SQLite
SELECT
	[e].[Name]
FROM
	[MissedJoinEntity] [e]

