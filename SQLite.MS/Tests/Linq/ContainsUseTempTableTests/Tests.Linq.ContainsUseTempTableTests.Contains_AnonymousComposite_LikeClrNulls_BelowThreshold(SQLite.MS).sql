-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] = 1 AND [r].[Tag] = 'tag1' OR [r].[Id] = 2 AND [r].[Tag] = 'tag2' OR
	[r].[Id] = 3 AND [r].[Tag] IS NULL
ORDER BY
	[r].[Id]

