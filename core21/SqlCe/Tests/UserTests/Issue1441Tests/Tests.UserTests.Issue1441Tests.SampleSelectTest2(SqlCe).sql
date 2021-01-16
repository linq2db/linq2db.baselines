BeforeExecute
-- SqlCe

CREATE TABLE [Authors]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

CREATE TABLE [Books]
(
	[Id]       Int           NOT NULL,
	[AuthorId] Int           NOT NULL,
	[Title]    NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON [book].[AuthorId] = [author].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Books]

BeforeExecute
-- SqlCe

DROP TABLE [Authors]

