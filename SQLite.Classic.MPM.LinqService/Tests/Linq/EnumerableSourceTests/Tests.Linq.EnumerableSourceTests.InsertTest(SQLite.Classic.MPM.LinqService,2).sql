BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Id0], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(3,3,'Janet'), (4,4,'Doe')
		) [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Id0], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(3,3,'Janet'), (4,4,'Doe')
		) [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

