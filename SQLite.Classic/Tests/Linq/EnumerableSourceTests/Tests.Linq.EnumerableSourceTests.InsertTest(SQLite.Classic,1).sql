-- SQLite.Classic SQLite

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
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(2,'Janet'), (3,'Doe')
		) [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

-- SQLite.Classic SQLite

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
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(2,'Janet'), (3,'Doe')
		) [t1]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [t1].[Id]
WHERE
	[t].[Id] IS NULL

