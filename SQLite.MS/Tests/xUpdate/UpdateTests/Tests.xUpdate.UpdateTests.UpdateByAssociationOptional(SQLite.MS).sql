-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
FROM
	[MainTable] [t1]
		LEFT JOIN ([AssociatedTable] [a_AssociatedOptional]
			LEFT JOIN [MainTable] [a_MainOptional] ON [a_AssociatedOptional].[Id] = [a_MainOptional].[Id])
		ON [t1].[Id] = [a_AssociatedOptional].[Id]
WHERE
	[t1].[Id] = @id AND [MainTable].[Id] = [a_MainOptional].[Id]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

