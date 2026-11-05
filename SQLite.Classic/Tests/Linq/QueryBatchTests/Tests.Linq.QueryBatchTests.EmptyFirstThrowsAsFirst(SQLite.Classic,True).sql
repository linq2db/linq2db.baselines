-- SQLite.Classic SQLite
SELECT
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
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
	[t1].[Id],
	[t1].[Value_1],
	[t1].[GroupId],
	[t1].[Name]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		CROSS JOIN (
			SELECT
				[i].[Id],
				[i].[Value] as [Value_1],
				[i].[GroupId],
				[i].[Name]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
			LIMIT 1
		) [t1]

