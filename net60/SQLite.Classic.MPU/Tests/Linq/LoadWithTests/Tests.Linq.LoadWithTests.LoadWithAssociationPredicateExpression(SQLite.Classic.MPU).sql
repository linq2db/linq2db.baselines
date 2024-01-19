BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ParentRecord]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ParentRecord]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [ParentRecord]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildRecord]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ChildRecord]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER NOT NULL,
	[IsActive] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [ChildRecord]
(
	[Id],
	[ParentId],
	[IsActive]
)
VALUES
(11,1,1),
(12,1,0),
(13,1,1)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[IsActive]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[ParentRecord] [t1]
	) [m_1]
		INNER JOIN [ChildRecord] [d] ON [m_1].[Id] = [d].[ParentId]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[IsActive]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[ParentRecord] [t1]
	) [m_1]
		INNER JOIN [ChildRecord] [d] ON [m_1].[Id] = [d].[ParentId]
WHERE
	[d].[IsActive] = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[ParentRecord] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildRecord]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ParentRecord]

