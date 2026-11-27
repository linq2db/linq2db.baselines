-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
ORDER BY
	[i].[Id]
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	(
		SELECT
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
		ORDER BY
			[i].[Id]
		LIMIT 1
	)

