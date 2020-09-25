BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Authors]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Books]
(
	[Id]       Int           NOT NULL,
	[AuthorId] Int           NOT NULL,
	[Title]    NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON [book].[AuthorId] = [author].[Id]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Books]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Authors]

