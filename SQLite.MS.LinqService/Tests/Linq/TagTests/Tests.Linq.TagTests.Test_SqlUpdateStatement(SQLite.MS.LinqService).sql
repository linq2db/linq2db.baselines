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
UPDATE
	[TestTable]
SET
	[Fd] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

