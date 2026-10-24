-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[r].[Id],
	[r].[Name]
FROM
	[ConvertTable] [r]
WHERE
	[r].[Id] = @p

