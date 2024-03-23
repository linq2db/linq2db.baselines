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
DECLARE @Fd  -- Int32
SET     @Fd = 1

/* My Test */
UPDATE
	[TestTable]
SET
	[Fd] = @Fd

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

