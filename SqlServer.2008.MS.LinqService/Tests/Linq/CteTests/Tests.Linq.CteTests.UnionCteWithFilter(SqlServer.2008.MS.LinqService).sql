BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Books]', N'U') IS NOT NULL)
	DROP TABLE [Books]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Books]', N'U') IS NULL)
	CREATE TABLE [Books]
	(
		[Id]       Int            NOT NULL,
		[Title]    NVarChar(4000) NOT NULL,
		[AuthorId] Int            NOT NULL,

		CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Title NVarChar(4000) -- String
SET     @Title = N'Something'
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 1

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Title NVarChar(4000) -- String
SET     @Title = N'Book'
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 2

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Title NVarChar(4000) -- String
SET     @Title = N'Boring'
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 3

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Authors]', N'U') IS NOT NULL)
	DROP TABLE [Authors]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Authors]', N'U') IS NULL)
	CREATE TABLE [Authors]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Steven'

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Smith'

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
	[b_1].[Name] = N'Steven' AND [b_1].[Name] IS NOT NULL OR
	[b_1].[Title] = N'Something' AND [b_1].[Title] IS NOT NULL

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Authors]', N'U') IS NOT NULL)
	DROP TABLE [Authors]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Books]', N'U') IS NOT NULL)
	DROP TABLE [Books]

