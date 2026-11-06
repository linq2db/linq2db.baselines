-- SQLite.Classic.MPU SQLite.Classic SQLite
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
			[BatchItem] [t1]
	),
	(
		SELECT
			[i].[Name]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] = 3
		LIMIT 1
	),
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
			MAX([t2].[Value])
		FROM
			[BatchItem] [t2]
	),
	(
		SELECT
			AVG(CAST([t3].[Value] AS Float))
		FROM
			[BatchItem] [t3]
	)

