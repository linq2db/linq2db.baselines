-- SQLite.MS SQLite

SELECT
	[x].[NTestId]
FROM
	[TestTable] [x]
WHERE
	[x].[Id] < 0
ORDER BY
	[x].[NTestId]
LIMIT 1

