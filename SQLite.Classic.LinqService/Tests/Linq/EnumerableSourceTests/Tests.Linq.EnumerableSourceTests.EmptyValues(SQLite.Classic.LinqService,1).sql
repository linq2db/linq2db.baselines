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

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
		INNER JOIN (SELECT NULL [Id], NULL [Value] WHERE 1 = 0) [r] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] AND [t].[Value] IS NOT NULL AND [r].[Value] IS NOT NULL OR [t].[Value] IS NULL AND [r].[Value] IS NULL)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

