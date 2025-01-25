BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Blog]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Blog]', N'U') IS NULL)
	CREATE TABLE [Blog]
	(
		[Id]     Int            NOT NULL,
		[Title]  NVarChar(4000)     NULL,
		[Slogan] NVarChar(4000)     NULL,
		[UserId] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Post]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]        Int            NOT NULL,
		[Name]      NVarChar(4000)     NULL,
		[IsDeleted] Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [PostTag]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[PostTag]', N'U') IS NULL)
	CREATE TABLE [PostTag]
	(
		[Id]        Int NOT NULL,
		[PostId]    Int NOT NULL,
		[TagId]     Int NOT NULL,
		[IsDeleted] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [PostTag]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Post]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Blog]

