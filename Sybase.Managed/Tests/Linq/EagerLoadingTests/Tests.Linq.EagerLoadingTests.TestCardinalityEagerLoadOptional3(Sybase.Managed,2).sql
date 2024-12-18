BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityA') IS NOT NULL)
	DROP TABLE [EntityA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityA') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityA]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityA] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityB') IS NOT NULL)
	DROP TABLE [EntityB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityB') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityB]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityB] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityC') IS NOT NULL)
	DROP TABLE [EntityC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityC') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityC]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityC] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityD') IS NOT NULL)
	DROP TABLE [EntityD]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityD') IS NULL)
	EXECUTE('
		CREATE TABLE [EntityD]
		(
			[Id] Int NOT NULL,
			[FK] Int     NULL,

			CONSTRAINT [PK_EntityD] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectBOptional].[Id]
		FROM
			[EntityA] [t1]
				LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id] AND [t1].[FK] IS NOT NULL
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK] AND [m_1].[Id] IS NOT NULL AND [d].[FK] IS NOT NULL OR [m_1].[Id] IS NULL AND [d].[FK] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[FK],
	[a_ObjectBOptional].[Id]
FROM
	[EntityA] [t1]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id] AND [t1].[FK] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityD') IS NOT NULL)
	DROP TABLE [EntityD]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityC') IS NOT NULL)
	DROP TABLE [EntityC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityB') IS NOT NULL)
	DROP TABLE [EntityB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EntityA') IS NOT NULL)
	DROP TABLE [EntityA]

