BeforeExecute
-- SqlCe

DROP TABLE [EntityMA]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityMA]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityMA] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityMA]
(
	[Id],
	[FK]
)
SELECT 10,NULL UNION ALL
SELECT 11,NULL UNION ALL
SELECT 12,NULL UNION ALL
SELECT 13,NULL

BeforeExecute
-- SqlCe

DROP TABLE [EntityMB]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityMB]
(
	[Id]  Int NOT NULL,
	[FK]  Int     NULL,
	[FKD] Int     NULL,

	CONSTRAINT [PK_EntityMB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityMB]
(
	[Id],
	[FK],
	[FKD]
)
SELECT 20,10,40 UNION ALL
SELECT 21,11,NULL UNION ALL
SELECT 22,11,40 UNION ALL
SELECT 23,19,49 UNION ALL
SELECT 24,19,NULL UNION ALL
SELECT 25,NULL,49 UNION ALL
SELECT 26,NULL,40 UNION ALL
SELECT 27,19,41 UNION ALL
SELECT 28,10,NULL

BeforeExecute
-- SqlCe

DROP TABLE [EntityMC]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityMC]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityMC] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityMC]
(
	[Id],
	[FK]
)
SELECT 30,20 UNION ALL
SELECT 31,24 UNION ALL
SELECT 32,21 UNION ALL
SELECT 33,21 UNION ALL
SELECT 34,23 UNION ALL
SELECT 35,NULL UNION ALL
SELECT 36,NULL UNION ALL
SELECT 37,29

BeforeExecute
-- SqlCe

DROP TABLE [EntityMD]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityMD]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityMD] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityMD]
(
	[Id],
	[FK]
)
SELECT 40,NULL UNION ALL
SELECT 41,NULL UNION ALL
SELECT 42,NULL

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[FK],
	[d].[FKD],
	[a_ObjectD].[Id] as [cond],
	[a_ObjectD].[FK] as [FK_1]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id] as [Id_1]
FROM
	[EntityMA] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [EntityMD]

BeforeExecute
-- SqlCe

DROP TABLE [EntityMC]

BeforeExecute
-- SqlCe

DROP TABLE [EntityMB]

BeforeExecute
-- SqlCe

DROP TABLE [EntityMA]

