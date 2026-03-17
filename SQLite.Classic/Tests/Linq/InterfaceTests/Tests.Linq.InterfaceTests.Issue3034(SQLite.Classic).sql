-- SQLite.Classic SQLite

UPDATE
	[MyTable]
SET
	[Name] = 'new_name'
WHERE
	[MyTable].[Id] = 1

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[MyTable] [t1]
ORDER BY
	[t1].[Id]

