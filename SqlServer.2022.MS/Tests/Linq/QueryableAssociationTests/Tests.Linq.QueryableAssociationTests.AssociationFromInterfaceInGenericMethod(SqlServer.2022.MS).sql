﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

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
				INNER JOIN [TreeItem] [a_Parent] ON [t].[ParentId] = [a_Parent].[Id]
		WHERE
			[a_Parent].[Id] > 0
	) [m_1]
		INNER JOIN [TreeItem] [d] ON [m_1].[Id] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Id]
FROM
	[TreeItem] [t]
		INNER JOIN [TreeItem] [a_Parent] ON [t].[ParentId] = [a_Parent].[Id]
WHERE
	[a_Parent].[Id] > 0

