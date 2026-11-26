-- SQLite.Classic SQLite
DROP TABLE IF EXISTS [BatchLater]

-- SQLite.Classic SQLite
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
			[BatchLater] [t1]
	)

-- SQLite.Classic SQLite
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
			[BatchLater] [t1]
	)

