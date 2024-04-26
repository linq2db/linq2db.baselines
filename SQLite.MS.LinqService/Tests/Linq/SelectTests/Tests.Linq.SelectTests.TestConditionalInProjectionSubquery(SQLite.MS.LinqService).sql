BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntityObject]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MainEntityObject]
(
	[Id]        INTEGER      NOT NULL,
	[MainValue] NVarChar(50)     NULL,

	CONSTRAINT [PK_MainEntityObject] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @MainValue NVarChar(11) -- String
SET     @MainValue = 'MainValue 1'

INSERT INTO [MainEntityObject]
(
	[Id],
	[MainValue]
)
VALUES
(
	@Id,
	@MainValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @MainValue NVarChar(11) -- String
SET     @MainValue = 'MainValue 2'

INSERT INTO [MainEntityObject]
(
	[Id],
	[MainValue]
)
VALUES
(
	@Id,
	@MainValue
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ChildEntityObject]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [ChildEntityObject]
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
-- SQLite.MS SQLite

SELECT DISTINCT
	[c_1].[Id],
	CASE
		WHEN [c_1].[Id] IS NOT NULL THEN [c_1].[Value]
		WHEN [q].[MainValue] IS NOT NULL THEN [q].[MainValue]
		ELSE ''
	END
FROM
	[MainEntityObject] [q]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [q].[Id]
WHERE
	[c_1].[Id] % 2 = 0

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntityObject]

