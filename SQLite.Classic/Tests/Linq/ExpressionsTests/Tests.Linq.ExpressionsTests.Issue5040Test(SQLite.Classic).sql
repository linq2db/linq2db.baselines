BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[UserId]
FROM
	[Account] [x]
WHERE
	[x].[UserId] IN (
		SELECT
			[y].[ObjectId]
		FROM
			[Permission] [y]
	)

