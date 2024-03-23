BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BaseTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BaseTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BaseTable]

