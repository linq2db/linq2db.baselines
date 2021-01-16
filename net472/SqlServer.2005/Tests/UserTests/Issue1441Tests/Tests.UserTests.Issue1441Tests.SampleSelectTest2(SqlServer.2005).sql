BeforeExecute
-- SqlServer.2005

CREATE TABLE [Authors]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Books]
(
	[Id]       Int           NOT NULL,
	[AuthorId] Int           NOT NULL,
	[Title]    NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Books]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Authors]

