BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Authors') IS NOT NULL)
	DROP TABLE [Authors]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Authors') IS NULL)
	EXECUTE('
		CREATE TABLE [Authors]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(100) NOT NULL,

			CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Books') IS NOT NULL)
	DROP TABLE [Books]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Books') IS NULL)
	EXECUTE('
		CREATE TABLE [Books]
		(
			[Id]       Int           NOT NULL,
			[AuthorId] Int           NOT NULL,
			[Title]    NVarChar(100) NOT NULL,

			CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON [book].[AuthorId] = [author].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Books') IS NOT NULL)
	DROP TABLE [Books]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Authors') IS NOT NULL)
	DROP TABLE [Authors]

