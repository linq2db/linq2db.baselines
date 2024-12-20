﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3799Item]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NULL)
	CREATE TABLE [Test3799Item]
	(
		[Id]       Int            NOT NULL,
		[ParentId] Int                NULL,
		[Name]     NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(1,NULL,N'root'),
(2,1,N'child 1'),
(3,2,N'child 1.1'),
(4,2,N'child 1.2'),
(5,1,N'child 2'),
(6,5,N'child 2.1'),
(7,5,N'child 2.1')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[Children],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Children]
		FROM
			[Test3799Item] [item_1]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Children].[Id] as [Children]
					FROM
						[Test3799Item] [a_Children]
					WHERE
						[item_1].[Id] = [a_Children].[ParentId]
				) [t1]
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON [m_1].[Children] = [d].[ParentId] OR [m_1].[Children] IS NULL AND [d].[ParentId] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Children]
FROM
	[Test3799Item] [item_1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[Name],
				[a_Children].[Id] as [Children]
			FROM
				[Test3799Item] [a_Children]
			WHERE
				[item_1].[Id] = [a_Children].[ParentId]
		) [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NOT NULL)
	DROP TABLE [Test3799Item]

