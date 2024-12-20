﻿BeforeExecute
-- SqlCe

DROP TABLE [EntityA]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityA]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityA] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityA]
(
	[Id],
	[FK]
)
SELECT 10,20 UNION ALL
SELECT 11,21 UNION ALL
SELECT 12,22 UNION ALL
SELECT 13,20 UNION ALL
SELECT 14,NULL UNION ALL
SELECT 15,NULL UNION ALL
SELECT 16,25 UNION ALL
SELECT 17,26 UNION ALL
SELECT 18,29

BeforeExecute
-- SqlCe

DROP TABLE [EntityB]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityB]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityB]
(
	[Id],
	[FK]
)
SELECT 20,30 UNION ALL
SELECT 21,31 UNION ALL
SELECT 22,30 UNION ALL
SELECT 23,31 UNION ALL
SELECT 24,31 UNION ALL
SELECT 25,NULL UNION ALL
SELECT 26,NULL UNION ALL
SELECT 27,NULL UNION ALL
SELECT 28,39

BeforeExecute
-- SqlCe

DROP TABLE [EntityC]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityC]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityC] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityC]
(
	[Id],
	[FK]
)
SELECT 30,NULL UNION ALL
SELECT 31,NULL UNION ALL
SELECT 32,NULL UNION ALL
SELECT 33,NULL UNION ALL
SELECT 34,NULL

BeforeExecute
-- SqlCe

DROP TABLE [EntityD]

BeforeExecute
-- SqlCe

CREATE TABLE [EntityD]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL,

	CONSTRAINT [PK_EntityD] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [EntityD]
(
	[Id],
	[FK]
)
SELECT 40,20 UNION ALL
SELECT 41,21 UNION ALL
SELECT 42,21 UNION ALL
SELECT 43,21 UNION ALL
SELECT 44,25 UNION ALL
SELECT 45,26 UNION ALL
SELECT 46,26 UNION ALL
SELECT 47,NULL UNION ALL
SELECT 48,NULL UNION ALL
SELECT 401,29

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectB].[Id]
		FROM
			[EntityA] [t1]
				INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectB].[Id] as [Id_1],
	[a_ObjectB].[FK] as [FK_1],
	[a_ObjectB].[Id] as [Id_2]
FROM
	[EntityA] [t1]
		INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [EntityD]

BeforeExecute
-- SqlCe

DROP TABLE [EntityC]

BeforeExecute
-- SqlCe

DROP TABLE [EntityB]

BeforeExecute
-- SqlCe

DROP TABLE [EntityA]

