BeforeExecute
-- SqlCe

DROP TABLE [Test3799Item]

BeforeExecute
-- SqlCe

CREATE TABLE [Test3799Item]
(
	[Id]       Int           NOT NULL,
	[ParentId] Int               NULL,
	[Name]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Test3799Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
SELECT 1,NULL,'root' UNION ALL
SELECT 2,1,'child 1' UNION ALL
SELECT 3,2,'child 1.1' UNION ALL
SELECT 4,2,'child 1.2' UNION ALL
SELECT 5,1,'child 2' UNION ALL
SELECT 6,5,'child 2.1' UNION ALL
SELECT 7,5,'child 2.1'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Test3799Item] [item_1]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Children].[Id]
					FROM
						[Test3799Item] [a_Children]
					WHERE
						[item_1].[Id] = [a_Children].[ParentId]
				) [t1]
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON ([m_1].[Id] = [d].[ParentId] OR [m_1].[Id] IS NULL AND [d].[ParentId] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[item_1].[Name],
	[t1].[Name] as [Name_1],
	[t1].[Id]
FROM
	[Test3799Item] [item_1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[Name],
				[a_Children].[Id]
			FROM
				[Test3799Item] [a_Children]
			WHERE
				[item_1].[Id] = [a_Children].[ParentId]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Test3799Item]

