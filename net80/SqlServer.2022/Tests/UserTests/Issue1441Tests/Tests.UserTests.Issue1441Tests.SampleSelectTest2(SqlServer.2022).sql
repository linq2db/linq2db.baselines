﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Authors]', N'U') IS NULL)
	CREATE TABLE [Authors]
	(
		[Id]   Int           NOT NULL,
		[Name] NVarChar(100) NOT NULL,

		CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Books]', N'U') IS NULL)
	CREATE TABLE [Books]
	(
		[Id]       Int           NOT NULL,
		[AuthorId] Int           NOT NULL,
		[Title]    NVarChar(100) NOT NULL,

		CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON [book].[AuthorId] = [author].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Authors]

