-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	[i].[Id],
	[i].[Name]
FROM
	[Item] [i]
WHERE
	[i].[Id] = @p

