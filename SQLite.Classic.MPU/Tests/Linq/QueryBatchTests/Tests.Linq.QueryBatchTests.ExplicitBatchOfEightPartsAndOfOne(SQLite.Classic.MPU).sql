-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take Integer -- Int32
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
			[BatchItem] [t1]
	),
	(
		SELECT
			MIN([t2].[Id])
		FROM
			[BatchItem] [t2]
	),
	(
		SELECT
			MAX([t3].[Id])
		FROM
			[BatchItem] [t3]
	),
	Coalesce((
		SELECT
			SUM([t4].[Id])
		FROM
			[BatchItem] [t4]
	), 0),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i]
		WHERE
			[i].[GroupId] = 2
	),
	EXISTS(
		SELECT
			*
		FROM
			[BatchItem] [i_1]
		WHERE
			[i_1].[Id] = 7
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_2]
		WHERE
			[i_2].[Value] IS NULL
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]
LIMIT @take OFFSET @skip
;
SELECT
	1

