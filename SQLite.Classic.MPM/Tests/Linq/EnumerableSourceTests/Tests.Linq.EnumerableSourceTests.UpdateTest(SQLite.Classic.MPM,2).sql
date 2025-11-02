-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TableToInsert]
SET
	[Value] = [r].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(3,'Janet Updated'), (4,'Doe Updated')
		) [r]
WHERE
	[TableToInsert].[Id] = [r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

