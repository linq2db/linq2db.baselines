﻿BeforeExecute
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
SET     @Id = 3
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'Janet'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(3) -- String
SET     @Value = 'Doe'

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[TableToInsert]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableToInsert] [t]
				INNER JOIN (
					SELECT NULL [Id] WHERE 1 = 0
					UNION ALL
					VALUES
						(3), (4)
					) [r] ON [t].[Id] = [r].[Id]
		WHERE
			[TableToInsert].[Id] = [t].[Id]
	)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

