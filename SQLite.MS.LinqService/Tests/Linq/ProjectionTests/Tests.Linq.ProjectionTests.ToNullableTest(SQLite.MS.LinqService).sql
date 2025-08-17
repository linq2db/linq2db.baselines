BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[t2].[IsActual]
FROM
	[SomeEntity] [t1]
		LEFT JOIN [SomeOtherEntity] [t2] ON [t2].[Id] = [t1].[OtherId]
LIMIT 1

