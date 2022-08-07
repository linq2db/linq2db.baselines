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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'Janet'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Doe'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite

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
					(2,'Janet'), (3,'Doe')
				) [r]
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

