BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Books]', N'U') IS NOT NULL)
	DROP TABLE [Books]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Books]', N'U') IS NULL)
	CREATE TABLE [Books]
	(
		[Id]       Int            NOT NULL,
		[Title]    NVarChar(4000) NOT NULL,
		[AuthorId] Int            NOT NULL,

		CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(1,N'Something',1),
(2,N'Book',2),
(3,N'Boring',3)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Authors]', N'U') IS NOT NULL)
	DROP TABLE [Authors]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Authors]', N'U') IS NULL)
	CREATE TABLE [Authors]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(1,N'John'),
(2,N'Steven'),
(3,N'Smith')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

WITH [BooksCte] ([Book_Id], [Book_Title], [Author_Name])
AS
(
	SELECT
		[b].[Id],
		[b].[Title],
		[a_Author].[Name]
	FROM
		[Books] [b]
			INNER JOIN [Authors] [a_Author] ON [b].[AuthorId] = [a_Author].[Id]
)
SELECT
	[b_1].[Id]
FROM
	(
		SELECT
			NULL as [Name],
			[r].[Book_Title] as [Title],
			[r].[Book_Id] as [Id]
		FROM
			[BooksCte] [r]
		UNION ALL
		SELECT
			[t1].[Author_Name] as [Name],
			NULL as [Title],
			NULL as [Id]
		FROM
			[BooksCte] [t1]
	) [b_1]
WHERE
	[b_1].[Name] = N'Steven' OR [b_1].[Title] = N'Something'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Authors]', N'U') IS NOT NULL)
	DROP TABLE [Authors]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Books]', N'U') IS NOT NULL)
	DROP TABLE [Books]

