BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL [Id], NULL [Value] WHERE 1 = 0
				UNION ALL
				VALUES
					(3,'Janet'), (4,'Doe')
				) [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] AND [t].[Value] IS NOT NULL AND [r].[Value] IS NOT NULL OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

