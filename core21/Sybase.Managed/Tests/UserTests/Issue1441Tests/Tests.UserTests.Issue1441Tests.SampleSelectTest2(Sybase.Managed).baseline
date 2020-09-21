BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Authors]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Books]
(
	[Id]       Int           NOT NULL,
	[AuthorId] Int           NOT NULL,
	[Title]    NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
)

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

DROP TABLE [Books]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Authors]

