BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3799Item]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NULL)
	CREATE TABLE [Test3799Item]
	(
		[Id]       Int            NOT NULL,
		[ParentId] Int                NULL,
		[Name]     NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
SELECT 1,NULL,N'root' UNION ALL
SELECT 2,1,N'child 1' UNION ALL
SELECT 3,2,N'child 1.1' UNION ALL
SELECT 4,2,N'child 1.2' UNION ALL
SELECT 5,1,N'child 2' UNION ALL
SELECT 6,5,N'child 2.1' UNION ALL
SELECT 7,5,N'child 2.1'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Test3799Item] [item_1]
				LEFT JOIN (
					SELECT
						[a_Children].[Id],
						ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
						[a_Children].[ParentId]
					FROM
						[Test3799Item] [a_Children]
				) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON ([m_1].[Id] = [d].[ParentId] OR [m_1].[Id] IS NULL AND [d].[ParentId] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Id]
FROM
	[Test3799Item] [item_1]
		LEFT JOIN (
			SELECT
				[a_Children].[Name],
				[a_Children].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
				[a_Children].[ParentId]
			FROM
				[Test3799Item] [a_Children]
		) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3799Item]

