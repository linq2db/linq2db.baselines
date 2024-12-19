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

INSERT INTO [MainEntityObject]
(
	[Id],
	[MainValue]
)
VALUES
(1,'MainValue 1'),
(2,'MainValue 2')

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

INSERT INTO [ChildEntityObject]
(
	[Id],
	[Value]
)
VALUES
(1,'Value 1')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[Id],
	[c_1].[Id],
	[c_1].[Value],
	CASE
		WHEN [c_1].[Value] <> 'Value 1' OR [c_1].[Value] IS NULL
			THEN 1
		ELSE 0
	END,
	[t1].[Id],
	[t1].[Value_1]
FROM
	[MainEntityObject] [t2]
		LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [t2].[Id]
		LEFT JOIN (
			SELECT
				[sc].[Id],
				[sc].[Value] as [Value_1]
			FROM
				[ChildEntityObject] [sc]
			LIMIT 1
		) [t1] ON 1=1
ORDER BY
	[t2].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntityObject]

