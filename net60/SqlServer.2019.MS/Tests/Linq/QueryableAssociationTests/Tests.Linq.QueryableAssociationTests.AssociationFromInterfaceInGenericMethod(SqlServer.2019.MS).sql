﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [TreeItem]
(
	[Id]       Int NOT NULL,
	[ParentId] Int     NULL
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
			[TreeItem] [t1]
		WHERE
			[x].[Id] = [t1].[ParentId]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[key_data_result].[Id],
	[key_data_result].[ParentId],
	[detail].[Id],
	[detail].[ParentId]
FROM
	(
		SELECT DISTINCT
			[t].[Id],
			[t].[ParentId]
		FROM
			[TreeItem] [t]
				LEFT JOIN [TreeItem] [a_Parent] ON [t].[ParentId] = [a_Parent].[Id]
		WHERE
			[a_Parent].[Id] > 0
	) [key_data_result]
		INNER JOIN [TreeItem] [detail] ON [key_data_result].[Id] = [detail].[ParentId]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[ParentId]
FROM
	[TreeItem] [t]
		LEFT JOIN [TreeItem] [a_Parent] ON [t].[ParentId] = [a_Parent].[Id]
WHERE
	[a_Parent].[Id] > 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TreeItem]

