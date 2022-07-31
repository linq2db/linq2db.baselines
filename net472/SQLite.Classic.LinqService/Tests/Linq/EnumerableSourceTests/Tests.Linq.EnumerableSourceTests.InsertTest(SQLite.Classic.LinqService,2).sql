BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[r].[Id],
	[r].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(3,'Janet'), (4,'Doe')
		) [r]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[r].[Id],
	[r].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(3,'Janet'), (4,'Doe')
		) [r]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

