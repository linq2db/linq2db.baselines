BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table404Two]
(
	[Id]           INTEGER NOT NULL,
	[Usage]        INTEGER NOT NULL,
	[FirstTableId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Usage  -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Usage  -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table404Two]
(
	[Id]           INTEGER NOT NULL,
	[Usage]        INTEGER NOT NULL,
	[FirstTableId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Usage  -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Usage  -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table404One]

