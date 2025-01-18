BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [InsertTable]
(
	[Id],
	[CreatedOn],
	[ModifiedOn]
)
SELECT
	[c_1].[Id] + 10,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
FROM
	[InsertTable] [c_1]
WHERE
	[c_1].[Id] > 0

