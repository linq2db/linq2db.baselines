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

SELECT
	[q].[Id],
	[q].[Value_2],
	[q].[Value_3]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id],
			CASE
				WHEN ([c_1].[Id] IS NOT NULL OR [c_1].[Value] IS NOT NULL)
					THEN [c_1].[Value]
				WHEN [m_1].[MainValue] IS NOT NULL
					THEN [m_1].[MainValue]
				ELSE ''
			END as [Value_1],
			[c_1].[Value] as [Value_2],
			CASE
				WHEN [m_1].[MainValue] IS NOT NULL
					THEN [m_1].[MainValue]
				ELSE ''
			END as [Value_3]
		FROM
			[MainEntityObject] [m_1]
				LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [m_1].[Id]
	) [q]
WHERE
	[q].[Id] % 2 = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

