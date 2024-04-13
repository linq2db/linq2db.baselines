﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TreeItem]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[TreeItem]', N'U') IS NULL)
	CREATE TABLE [TreeItem]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT
	[x].[Id],
	[x].[ParentId]
FROM
	[TreeItem] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TreeItem] [a_Children]
		WHERE
			[x].[Id] = [a_Children].[ParentId]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[t].[Id]
		FROM
			[TreeItem] [t]
				LEFT JOIN [TreeItem] [a_Parent] ON ([t].[ParentId] = [a_Parent].[Id] OR [t].[ParentId] IS NULL AND [a_Parent].[Id] IS NULL)
		WHERE
			[a_Parent].[Id] > 0
	) [m_1]
		INNER JOIN [TreeItem] [d] ON [m_1].[Id] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2017

SELECT
	[t].[Id]
FROM
	[TreeItem] [t]
		LEFT JOIN [TreeItem] [a_Parent] ON ([t].[ParentId] = [a_Parent].[Id] OR [t].[ParentId] IS NULL AND [a_Parent].[Id] IS NULL)
WHERE
	[a_Parent].[Id] > 0

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TreeItem]

