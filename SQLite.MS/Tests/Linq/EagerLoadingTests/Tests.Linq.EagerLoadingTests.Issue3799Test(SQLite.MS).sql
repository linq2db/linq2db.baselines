BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3799Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Test3799Item]
(
	[Id]       INTEGER       NOT NULL,
	[ParentId] INTEGER           NULL,
	[Name]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Test3799Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(1,NULL,'root'),
(2,1,'child 1'),
(3,2,'child 1.1'),
(4,2,'child 1.2'),
(5,1,'child 2'),
(6,5,'child 2.1'),
(7,5,'child 2.1')

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3799Item]

