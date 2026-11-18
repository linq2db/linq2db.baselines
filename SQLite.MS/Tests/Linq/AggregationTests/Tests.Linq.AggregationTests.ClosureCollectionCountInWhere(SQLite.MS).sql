-- SQLite.MS SQLite
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 0

SELECT
	[t].[Id]
FROM
	[CountTarget] [t]
WHERE
	[t].[ItemsCount] = @p AND [t].[EmptyCount] = @p_1

