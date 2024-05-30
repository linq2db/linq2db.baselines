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

