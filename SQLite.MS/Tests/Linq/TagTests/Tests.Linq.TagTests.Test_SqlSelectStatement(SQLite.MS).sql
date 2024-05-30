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
SELECT
	[t1].[Id],
	[t1].[Fd]
FROM
	[TestTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

