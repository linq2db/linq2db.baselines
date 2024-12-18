BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMA]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityMA]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMA] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
VALUES
(10,NULL),
(11,NULL),
(12,NULL),
(13,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityMB]
(
	[Id]  INTEGER NOT NULL,
	[FK]  INTEGER     NULL,
	[FKD] INTEGER     NULL,

	CONSTRAINT [PK_EntityMB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
VALUES
(20,10,40),
(21,11,NULL),
(22,11,40),
(23,19,49),
(24,19,NULL),
(25,NULL,49),
(26,NULL,40),
(27,19,41),
(28,10,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityMC]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMC] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
VALUES
(30,20),
(31,24),
(32,21),
(33,21),
(34,23),
(35,NULL),
(36,NULL),
(37,29)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EntityMD]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMD] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
VALUES
(40,NULL),
(41,NULL),
(42,NULL)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[EntityMA] [t1]
			) [t2]
				INNER JOIN [EntityMB] [d] ON [t2].[Id] = [d].[FK] AND [d].[FK] IS NOT NULL
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK] AND [d_1].[FK] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK],
	[d].[FKD],
	[d].[Id]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK] AND [d].[FK] IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id]
FROM
	[EntityMA] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EntityMA]

