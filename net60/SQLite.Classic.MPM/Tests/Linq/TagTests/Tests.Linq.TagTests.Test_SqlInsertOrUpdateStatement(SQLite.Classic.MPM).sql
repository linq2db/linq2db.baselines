BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestTable]
(
	[Id] INTEGER NOT NULL,
	[Fd] INTEGER     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Fd  -- Int32
SET     @Fd = 2
DECLARE @Fd_1  -- Int32
SET     @Fd_1 = 2

/* My Test */
INSERT INTO [TestTable] AS [t1]
(
	[Id],
	[Fd]
)
VALUES
(
	@Id,
	@Fd
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Fd] = @Fd_1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

