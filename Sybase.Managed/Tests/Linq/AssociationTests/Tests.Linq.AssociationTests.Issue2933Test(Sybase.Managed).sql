BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Car') IS NOT NULL)
	DROP TABLE [Issue2933Car]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Car') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2933Car]
		(
			[PersonId] Int     NULL,
			[Id]       Int NOT NULL,

			CONSTRAINT [PK_Issue2933Car] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue2933Car]
(
	[PersonId],
	[Id]
)
SELECT 1,1 UNION ALL
SELECT NULL,2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Person') IS NOT NULL)
	DROP TABLE [Issue2933Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Person') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2933Person]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Issue2933Person] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue2933Person]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Pet') IS NOT NULL)
	DROP TABLE [Issue2933Pet]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Pet') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2933Pet]
		(
			[Name]     NVarChar(255) NOT NULL,
			[Id]       Int           NOT NULL,
			[PersonId] Int           NOT NULL,

			CONSTRAINT [PK_Issue2933Pet] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue2933Pet]
(
	[Name],
	[Id],
	[PersonId]
)
SELECT 'Snuffles',1,1 UNION ALL
SELECT 'Buddy',2,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Pet') IS NOT NULL)
	DROP TABLE [Issue2933Pet]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Person') IS NOT NULL)
	DROP TABLE [Issue2933Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2933Car') IS NOT NULL)
	DROP TABLE [Issue2933Car]

