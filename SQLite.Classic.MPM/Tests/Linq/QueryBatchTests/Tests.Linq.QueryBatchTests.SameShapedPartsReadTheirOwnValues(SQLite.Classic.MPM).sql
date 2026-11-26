-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 2
DECLARE @id_2 Integer -- Int32
SET     @id_2 = 3

SELECT
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[GroupId] = 2
ORDER BY
	[i].[Id]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] <= @id
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_1]
		WHERE
			[i_1].[Id] <= @id_1
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_2]
		WHERE
			[i_2].[Id] <= @id_2
	),
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [i_3]
		WHERE
			[i_3].[GroupId] = 2
	)

