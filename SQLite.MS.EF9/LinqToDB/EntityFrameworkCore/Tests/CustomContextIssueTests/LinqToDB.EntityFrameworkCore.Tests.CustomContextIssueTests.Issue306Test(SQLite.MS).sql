--  SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[e].[Id],
	[e].[Value]
FROM
	[Issue306Entity] [e]
WHERE
	[e].[Id] = @id



