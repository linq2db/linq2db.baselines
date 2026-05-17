-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [InsertTable]
(
	[Id],
	[CreatedOn],
	[ModifiedOn]
)
SELECT
	[c_1].[Id] + 10,
	DATETIME('now', 'localtime'),
	DATETIME('now', 'localtime')
FROM
	[InsertTable] [c_1]
WHERE
	[c_1].[Id] > 0

