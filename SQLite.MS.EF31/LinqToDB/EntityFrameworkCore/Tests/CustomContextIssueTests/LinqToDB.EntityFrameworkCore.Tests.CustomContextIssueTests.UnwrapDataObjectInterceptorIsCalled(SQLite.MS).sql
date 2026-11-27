-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	[e].[Id],
	[e].[Value]
FROM
	[UnwrapInterceptorEntity] [e]
WHERE
	[e].[Id] = @id



