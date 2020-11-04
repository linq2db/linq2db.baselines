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

INSERT INTO [MainEntityObject]
(
	[Id],
	[MainValue]
)
VALUES
(1,'MainValue 1'),
(2,'MainValue 2')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ChildEntityObject]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [ChildEntityObject]
(
	[Id],
	[Value]
)
VALUES
(1,'Value 1')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[Id],
	[c_1].[Value]
FROM
	[MainEntityObject] [m_1]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [m_1].[Id]
ORDER BY
	[c_1].[Id] DESC

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

