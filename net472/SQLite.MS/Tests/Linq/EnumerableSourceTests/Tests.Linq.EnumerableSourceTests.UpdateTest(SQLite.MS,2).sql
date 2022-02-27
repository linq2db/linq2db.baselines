BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[TableToInsert]
SET
	[Value] = (
		SELECT
			[r].[Value]
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT NULL[Id], NULL[Value] WHERE 1 = 0
					UNION ALL
					VALUES
						(3,'Janet Updated'), (4,'Doe Updated')
					) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableToInsert] [t_1]
				INNER JOIN (
					SELECT NULL[Id], NULL[Value] WHERE 1 = 0
					UNION ALL
					VALUES
						(3,'Janet Updated'), (4,'Doe Updated')
					) [r_1] ON [t_1].[Id] = [r_1].[Id]
		WHERE
			[TableToInsert].[Id] = [t_1].[Id]
	)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

