-- SQLite.MS SQLite
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 4

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
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

