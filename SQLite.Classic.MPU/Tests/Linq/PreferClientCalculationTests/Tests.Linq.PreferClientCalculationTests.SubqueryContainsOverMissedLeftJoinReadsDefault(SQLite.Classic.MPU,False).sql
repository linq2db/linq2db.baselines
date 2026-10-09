-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id],
	CASE
		WHEN Coalesce([j].[Value1], 0) IN (
			SELECT
				[p].[Value1]
			FROM
				[PartialJoinEntity] [p]
		)
			THEN 'y'
		ELSE 'n'
	END
FROM
	[PartialJoinEntity] [e]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Grp]
FROM
	[PartialJoinEntity] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id]
FROM
	[PartialJoinEntity] [e]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
WHERE
	[j].[Value1] IN (
		SELECT
			[p].[Value1]
		FROM
			[PartialJoinEntity] [p]
	)
ORDER BY
	[e].[Id]

