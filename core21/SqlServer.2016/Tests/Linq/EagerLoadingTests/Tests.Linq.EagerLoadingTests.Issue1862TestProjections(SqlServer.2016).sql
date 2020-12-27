BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Blog]', N'U') IS NOT NULL)
	DROP TABLE [Blog]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Blog]', N'U') IS NULL)
	CREATE TABLE [Blog]
	(
		[Id]     Int            NOT NULL,
		[Title]  NVarChar(4000)     NULL,
		[Slogan] NVarChar(4000)     NULL,
		[UserId] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [Blog]
(
	[Id],
	[Title],
	[Slogan],
	[UserId]
)
VALUES
(1,N'Another .NET Core Guy',N'Doing .NET Core Stuff',N'bc7b663d0fde43278f925d8cc3a11d11')

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Post]', N'U') IS NOT NULL)
	DROP TABLE [Post]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Post]', N'U') IS NULL)
	CREATE TABLE [Post]
	(
		[Id]          Int            NOT NULL,
		[BlogId]      Int            NOT NULL,
		[Title]       NVarChar(4000)     NULL,
		[PostContent] NVarChar(4000)     NULL,
		[IsDeleted]   Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [Post]
(
	[Id],
	[BlogId],
	[Title],
	[PostContent],
	[IsDeleted]
)
VALUES
(1,1,N'Post 1',N'Content 1 is about EF Core and Razor page',0),
(2,1,N'Post 2',N'Content 2 is about Dapper',0),
(3,1,N'Post 3',N'Content 3',1),
(4,1,N'Post 4',N'Content 4',0)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]        Int            NOT NULL,
		[Name]      NVarChar(4000)     NULL,
		[IsDeleted] Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [Tag]
(
	[Id],
	[Name],
	[IsDeleted]
)
VALUES
(1,N'Razor Page',0),
(2,N'EF Core',0),
(3,N'Dapper',0),
(4,N'Slapper Dapper',0),
(5,N'SqlKata',1)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[PostTag]', N'U') IS NOT NULL)
	DROP TABLE [PostTag]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[PostTag]', N'U') IS NULL)
	CREATE TABLE [PostTag]
	(
		[Id]        Int NOT NULL,
		[PostId]    Int NOT NULL,
		[TagId]     Int NOT NULL,
		[IsDeleted] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [PostTag]
(
	[Id],
	[PostId],
	[TagId],
	[IsDeleted]
)
VALUES
(1,1,1,0),
(2,1,2,0),
(3,2,3,0),
(4,4,5,0)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	[key_data_result_1].[Id],
	[key_data_result_1].[BlogId],
	[key_data_result_1].[Title],
	[key_data_result_1].[PostContent],
	[key_data_result_1].[IsDeleted],
	[key_data_result_1].[Id_1],
	[key_data_result_1].[Title_1],
	[key_data_result_1].[Slogan],
	[key_data_result_1].[UserId],
	[detail_1].[TagId],
	[a_Tag].[Name]
FROM
	(
		SELECT DISTINCT
			[detail].[Id],
			[detail].[BlogId],
			[detail].[Title],
			[detail].[PostContent],
			[detail].[IsDeleted],
			[key_data_result].[Id] as [Id_1],
			[key_data_result].[Title] as [Title_1],
			[key_data_result].[Slogan],
			[key_data_result].[UserId]
		FROM
			(
				SELECT DISTINCT
					[b].[Id],
					[b].[Title],
					[b].[Slogan],
					[b].[UserId]
				FROM
					[Blog] [b]
				WHERE
					[b].[Id] = @Id
			) [key_data_result]
				INNER JOIN [Post] [detail] ON [key_data_result].[Id] = [detail].[BlogId]
	) [key_data_result_1]
		INNER JOIN [PostTag] [detail_1] ON [key_data_result_1].[Id] = [detail_1].[PostId] AND [detail_1].[IsDeleted] = 0
		INNER JOIN [Tag] [a_Tag] ON [detail_1].[TagId] = [a_Tag].[Id]
ORDER BY
	[detail_1].[TagId]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	[key_data_result].[Id],
	[key_data_result].[Title],
	[key_data_result].[Slogan],
	[key_data_result].[UserId],
	[detail].[Id],
	[detail].[Title],
	[detail].[PostContent],
	[detail].[BlogId],
	[detail].[IsDeleted]
FROM
	(
		SELECT DISTINCT
			[b].[Id],
			[b].[Title],
			[b].[Slogan],
			[b].[UserId]
		FROM
			[Blog] [b]
		WHERE
			[b].[Id] = @Id
	) [key_data_result]
		INNER JOIN [Post] [detail] ON [key_data_result].[Id] = [detail].[BlogId]
ORDER BY
	[detail].[Id]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[b].[Id],
	[b].[Title],
	[b].[Slogan],
	[b].[UserId]
FROM
	[Blog] [b]
WHERE
	[b].[Id] = @blogId

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[PostTag]', N'U') IS NOT NULL)
	DROP TABLE [PostTag]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Post]', N'U') IS NOT NULL)
	DROP TABLE [Post]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[Blog]', N'U') IS NOT NULL)
	DROP TABLE [Blog]

