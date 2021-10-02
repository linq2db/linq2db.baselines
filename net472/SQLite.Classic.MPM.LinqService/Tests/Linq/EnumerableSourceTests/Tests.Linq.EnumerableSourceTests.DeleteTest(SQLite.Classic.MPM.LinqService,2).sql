﻿BeforeExecute
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
DECLARE @Id  -- Int32
SET     @Id = 3
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT NULL[Id] WHERE 1 = 0
					UNION ALL
					VALUES
						(3), (4)
					) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

