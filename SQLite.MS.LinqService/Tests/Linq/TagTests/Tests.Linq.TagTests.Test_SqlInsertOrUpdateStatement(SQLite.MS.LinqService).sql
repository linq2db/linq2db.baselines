BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestTable]
(
	[Id] INTEGER NOT NULL,
	[Fd] INTEGER     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

/* My Test */
INSERT INTO [TestTable] AS [t1]
(
	[Id],
	[Fd]
)
VALUES
(
	1,
	2
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Fd] = 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

