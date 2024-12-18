BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMA') IS NOT NULL)
	DROP TABLE [EntityMA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMA') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityMA]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityMA] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMB') IS NOT NULL)
	DROP TABLE [EntityMB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMB') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityMB]
		(
			[Id]  Int NOT NULL,
			[FK]  Int     NULL,
			[FKD] Int     NULL,

			CONSTRAINT [PK_EntityMB] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMC') IS NOT NULL)
	DROP TABLE [EntityMC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMC') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityMC]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityMC] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMD') IS NOT NULL)
	DROP TABLE [EntityMD]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMD') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityMD]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityMD] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Id],
	[a_ObjectD].[Id],
	[a_ObjectD].[FK]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK] AND [d].[FK] IS NOT NULL
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id] AND [d].[FKD] IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[e].[Id]
FROM
	[EntityMA] [e]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMD') IS NOT NULL)
	DROP TABLE [EntityMD]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMC') IS NOT NULL)
	DROP TABLE [EntityMC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMB') IS NOT NULL)
	DROP TABLE [EntityMB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityMA') IS NOT NULL)
	DROP TABLE [EntityMA]

