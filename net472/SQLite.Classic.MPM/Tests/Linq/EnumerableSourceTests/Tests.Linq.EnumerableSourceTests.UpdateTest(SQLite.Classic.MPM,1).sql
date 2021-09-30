BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TableToInsert]
SET
	[Value] = (
		SELECT
			[r].[Value]
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT NULL AS [Id], NULL AS [Value] WHERE 0
					UNION ALL
					VALUES
						(2,'Janet Updated'), (3,'Doe Updated')
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
					SELECT NULL AS [Id], NULL AS [Value] WHERE 0
					UNION ALL
					VALUES
						(2,'Janet Updated'), (3,'Doe Updated')
					) [r_1] ON [t_1].[Id] = [r_1].[Id]
		WHERE
			[TableToInsert].[Id] = [t_1].[Id]
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

