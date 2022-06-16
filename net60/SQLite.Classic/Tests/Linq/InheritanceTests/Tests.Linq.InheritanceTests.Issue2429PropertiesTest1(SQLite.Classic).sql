BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BaseTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BaseTable]
(
	[Value] INTEGER NOT NULL,
	[Id]    INTEGER NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(100,1)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BaseTable]

