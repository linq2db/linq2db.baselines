BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [TestTable]
(
	[Id] INTEGER NOT NULL,
	[Fd] INTEGER     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

/* My Test */
INSERT INTO [TestTable]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

