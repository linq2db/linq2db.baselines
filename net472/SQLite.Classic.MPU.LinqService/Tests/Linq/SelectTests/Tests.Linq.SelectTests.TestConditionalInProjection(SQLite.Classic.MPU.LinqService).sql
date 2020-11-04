BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MainEntityObject]
(
	[Id]        INTEGER      NOT NULL,
	[MainValue] NVarChar(50)     NULL,

	CONSTRAINT [PK_MainEntityObject] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ChildEntityObject]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'Value 1'

INSERT INTO [ChildEntityObject]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[sc].[Id],
	[sc].[Value]
FROM
	[ChildEntityObject] [sc]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[Id],
	[c_1].[Value]
FROM
	[MainEntityObject] [m_1]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [m_1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

