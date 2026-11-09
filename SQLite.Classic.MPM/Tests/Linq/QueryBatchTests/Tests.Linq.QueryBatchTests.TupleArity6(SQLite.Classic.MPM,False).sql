-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]
LIMIT @take
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t3]
	),
	[t1].[Item2],
	[t1].[Item2_1],
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_1]
		WHERE
			[i_1].[Id] > 5
	),
	EXISTS(
		SELECT
			*
		FROM
			[BatchItem] [i_2]
		WHERE
			[i_2].[Value] IS NULL
	),
	(
		SELECT
			MAX([t4].[Value])
		FROM
			[BatchItem] [t4]
	)
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT
				1 as [Item2],
				[i].[Name] as [Item2_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] = 3
			LIMIT 1
		) [t1] ON 1=1

