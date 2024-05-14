BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Blog]', N'U') IS NOT NULL)
	DROP TABLE [Blog]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Blog]', N'U') IS NULL)
	CREATE TABLE [Blog]
	(
		[Id]     Int            NOT NULL,
		[Title]  NVarChar(4000)     NULL,
		[Slogan] NVarChar(4000)     NULL,
		[UserId] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Blog]
(
	[Id],
	[Title],
	[Slogan],
	[UserId]
)
SELECT 1,N'Another .NET Core Guy',N'Doing .NET Core Stuff',N'bc7b663d0fde43278f925d8cc3a11d11'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Post]', N'U') IS NOT NULL)
	DROP TABLE [Post]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

INSERT INTO [Post]
(
	[Id],
	[BlogId],
	[Title],
	[PostContent],
	[IsDeleted]
)
SELECT 1,1,N'Post 1',N'Content 1 is about EF Core and Razor page',0 UNION ALL
SELECT 2,1,N'Post 2',N'Content 2 is about Dapper',0 UNION ALL
SELECT 3,1,N'Post 3',N'Content 3',1 UNION ALL
SELECT 4,1,N'Post 4',N'Content 4',0

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]        Int            NOT NULL,
		[Name]      NVarChar(4000)     NULL,
		[IsDeleted] Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Tag]
(
	[Id],
	[Name],
	[IsDeleted]
)
SELECT 1,N'Razor Page',0 UNION ALL
SELECT 2,N'EF Core',0 UNION ALL
SELECT 3,N'Dapper',0 UNION ALL
SELECT 4,N'Slapper Dapper',0 UNION ALL
SELECT 5,N'SqlKata',1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PostTag]', N'U') IS NOT NULL)
	DROP TABLE [PostTag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PostTag]', N'U') IS NULL)
	CREATE TABLE [PostTag]
	(
		[Id]        Int NOT NULL,
		[PostId]    Int NOT NULL,
		[TagId]     Int NOT NULL,
		[IsDeleted] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [PostTag]
(
	[Id],
	[PostId],
	[TagId],
	[IsDeleted]
)
SELECT 1,1,1,0 UNION ALL
SELECT 2,1,2,0 UNION ALL
SELECT 3,2,3,0 UNION ALL
SELECT 4,4,5,0

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[TagId],
	[a_Tag].[Name]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[b].[Id]
				FROM
					[Blog] [b]
				WHERE
					[b].[Id] = @blogId
			) [t1]
				INNER JOIN [Post] [d] ON [t1].[Id] = [d].[BlogId]
	) [m_1]
		INNER JOIN [PostTag] [d_1] ON [m_1].[Id] = [d_1].[PostId]
		INNER JOIN [Tag] [a_Tag] ON [d_1].[TagId] = [a_Tag].[Id]
WHERE
	[d_1].[IsDeleted] = 0
ORDER BY
	[d_1].[TagId]

BeforeExecute
-- SqlServer.2005
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Title],
	[d].[PostContent]
FROM
	(
		SELECT DISTINCT
			[b].[Id]
		FROM
			[Blog] [b]
		WHERE
			[b].[Id] = @blogId
	) [m_1]
		INNER JOIN [Post] [d] ON [m_1].[Id] = [d].[BlogId]
ORDER BY
	[d].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[b].[Id],
	[b].[Title]
FROM
	[Blog] [b]
WHERE
	[b].[Id] = @blogId

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PostTag]', N'U') IS NOT NULL)
	DROP TABLE [PostTag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Post]', N'U') IS NOT NULL)
	DROP TABLE [Post]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Blog]', N'U') IS NOT NULL)
	DROP TABLE [Blog]

