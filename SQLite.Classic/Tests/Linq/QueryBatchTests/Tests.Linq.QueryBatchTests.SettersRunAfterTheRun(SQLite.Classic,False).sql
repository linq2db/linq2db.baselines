-- SQLite.Classic SQLite
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
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
		LIMIT 1
	)

-- SQLite.Classic SQLite
INSERT INTO [BatchItem]
(
	[Id],
	[GroupId]
)
VALUES
(
	101,
	1
)

-- SQLite.Classic SQLite
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
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
		LIMIT 1
	)

