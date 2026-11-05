-- SQLite.Classic SQLite
SELECT
	[i].[Value]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 3
LIMIT 1

-- SQLite.Classic SQLite
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
			[i].[Value]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] = 3
		LIMIT 1
	)

