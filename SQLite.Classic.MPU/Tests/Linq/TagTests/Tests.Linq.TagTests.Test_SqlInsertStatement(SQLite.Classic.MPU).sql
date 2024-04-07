BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestTable]
(
	[Id] INTEGER NOT NULL,
	[Fd] INTEGER     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

