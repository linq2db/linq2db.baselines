-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[i].[Id] / ([i].[Id] - 1)
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 1
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
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT
				1 as [Item1],
				[i].[Id] / ([i].[Id] - 1) as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] = 1
			LIMIT 1
		) [t1] ON 1=1

