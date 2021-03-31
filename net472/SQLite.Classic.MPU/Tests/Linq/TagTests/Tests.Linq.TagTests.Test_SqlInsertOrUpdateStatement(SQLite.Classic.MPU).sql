BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [TestTable]
(
	[Id] INTEGER NOT NULL,
	[Fd] INTEGER     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

/* My Test */
UPDATE
	[TestTable]
SET
	[Id] = 1
WHERE
	[TestTable].[Id] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

/* My Test */
INSERT INTO [TestTable]
(
	[Id],
	[Fd]
)
VALUES
(
	1,
	2
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

