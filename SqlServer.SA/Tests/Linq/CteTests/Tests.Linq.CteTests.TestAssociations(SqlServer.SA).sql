BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Books]', N'U') IS NULL)
	CREATE TABLE [Books]
	(
		[Id]       Int             NOT NULL IDENTITY,
		[Title]    NVarChar(4000)  NOT NULL,
		[AuthorId] Int             NOT NULL,

		CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Authors]', N'U') IS NULL)
	CREATE TABLE [Authors]
	(
		[Id]   Int             NOT NULL IDENTITY,
		[Name] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

WITH [BooksCte] ([AuthorId], [Title])
AS
(
	SELECT
		[t1].[AuthorId],
		[t1].[Title]
	FROM
		[Books] [t1]
)
SELECT
	[b].[Title]
FROM
	[BooksCte] [b]
		INNER JOIN [Authors] [a_Author] ON [b].[AuthorId] = [a_Author].[Id]
WHERE
	[a_Author].[Name] = N'Steven'

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Books]

