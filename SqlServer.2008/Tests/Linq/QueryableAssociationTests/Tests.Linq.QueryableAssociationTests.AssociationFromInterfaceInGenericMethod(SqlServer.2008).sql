BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TreeItem]', N'U') IS NOT NULL)
	DROP TABLE [TreeItem]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TreeItem]', N'U') IS NULL)
	CREATE TABLE [TreeItem]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2008

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
			[x].[Id] = [a_Children].[ParentId] AND [a_Children].[ParentId] IS NOT NULL
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008

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
				LEFT JOIN [TreeItem] [a_Parent] ON [t].[ParentId] = [a_Parent].[Id] AND [t].[ParentId] IS NOT NULL
		WHERE
			[a_Parent].[Id] > 0 AND [a_Parent].[Id] IS NOT NULL
	) [m_1]
		INNER JOIN [TreeItem] [d] ON [m_1].[Id] = [d].[ParentId] AND [d].[ParentId] IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008

SELECT
	[t].[Id]
FROM
	[TreeItem] [t]
		LEFT JOIN [TreeItem] [a_Parent] ON [t].[ParentId] = [a_Parent].[Id] AND [t].[ParentId] IS NOT NULL
WHERE
	[a_Parent].[Id] > 0 AND [a_Parent].[Id] IS NOT NULL

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TreeItem]', N'U') IS NOT NULL)
	DROP TABLE [TreeItem]

