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

