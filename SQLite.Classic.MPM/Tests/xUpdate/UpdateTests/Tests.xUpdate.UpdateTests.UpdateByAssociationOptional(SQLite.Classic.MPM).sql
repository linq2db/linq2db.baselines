-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
FROM
	[MainTable] [t1]
		LEFT JOIN [AssociatedTable] [a_AssociatedOptional] ON [t1].[Id] = [a_AssociatedOptional].[Id]
WHERE
	[t1].[Id] = @id AND [a_AssociatedOptional].[Id] = [MainTable].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

