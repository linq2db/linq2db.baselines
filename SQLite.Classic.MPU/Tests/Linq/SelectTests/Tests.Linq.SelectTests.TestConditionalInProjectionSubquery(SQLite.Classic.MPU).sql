BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

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

DROP TABLE IF EXISTS [ChildEntityObject]

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

