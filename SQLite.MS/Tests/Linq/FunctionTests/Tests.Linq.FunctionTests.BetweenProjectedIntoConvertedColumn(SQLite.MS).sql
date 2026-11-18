-- SQLite.MS SQLite
DECLARE @low Integer -- Int32
SET     @low = 1
DECLARE @high Integer -- Int32
SET     @high = 3

SELECT
	[r].[Id],
	[r].[Value],
	[r].[Value] BETWEEN @low AND @high,
	[r].[Value] NOT BETWEEN 1 AND 3
FROM
	[BetweenTargetRow] [r]
ORDER BY
	[r].[Id]

