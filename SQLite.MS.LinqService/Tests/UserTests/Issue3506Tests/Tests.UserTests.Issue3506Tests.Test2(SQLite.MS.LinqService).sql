BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[catz] [cat]
		INNER JOIN [owners] [owner_1] ON [cat].[OwnerId] = [owner_1].[Id]

