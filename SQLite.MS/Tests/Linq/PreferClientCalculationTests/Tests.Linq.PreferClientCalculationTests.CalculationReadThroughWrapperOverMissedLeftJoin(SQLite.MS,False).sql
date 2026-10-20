-- SQLite.MS SQLite
SELECT
	Coalesce([j].[Value1], 0) + 1
FROM
	[PartialJoinEntity] [y]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [y].[Id] + 1
ORDER BY
	[y].[Id]

-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	Coalesce([j].[Value1], 0) + 1
FROM
	[PartialJoinEntity] [y]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [y].[Id] + 1
ORDER BY
	[y].[Id]
LIMIT @take

-- SQLite.MS SQLite
SELECT
	Coalesce([j].[Value1], 0) + 1
FROM
	[PartialJoinEntity] [y]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [y].[Id] + 1
ORDER BY
	[y].[Id]

-- SQLite.MS SQLite
SELECT
	[y].[X]
FROM
	(
		SELECT
			[e].[Id],
			Coalesce([j].[Value1], 0) + 1 as [X]
		FROM
			[PartialJoinEntity] [e]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
	) [y]
ORDER BY
	[y].[Id]

-- SQLite.MS SQLite
SELECT
	[y_1].[X]
FROM
	(
		SELECT DISTINCT
			[y].[Id],
			[j].[Value1] + 1 as [X]
		FROM
			[PartialJoinEntity] [y]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [y].[Id] + 1
	) [y_1]
ORDER BY
	[y_1].[Id]

-- SQLite.MS SQLite
SELECT
	Coalesce([y_1].[X], 0) + 1
FROM
	(
		SELECT DISTINCT
			[y].[Id],
			[j].[Value1] + 1 as [X]
		FROM
			[PartialJoinEntity] [y]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [y].[Id] + 1
	) [y_1]
ORDER BY
	[y_1].[Id]

