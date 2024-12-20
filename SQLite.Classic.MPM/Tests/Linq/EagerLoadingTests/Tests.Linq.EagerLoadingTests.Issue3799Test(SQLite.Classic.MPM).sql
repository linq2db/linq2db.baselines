﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3799Item]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3799Item]
(
	[Id]       INTEGER       NOT NULL,
	[ParentId] INTEGER           NULL,
	[Name]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Test3799Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Children],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Children]
		FROM
			[Test3799Item] [item_1]
				LEFT JOIN (
					SELECT
						[a_Children].[Id] as [Children],
						ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
						[a_Children].[ParentId]
					FROM
						[Test3799Item] [a_Children]
				) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON [m_1].[Children] = [d].[ParentId] OR [m_1].[Children] IS NULL AND [d].[ParentId] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Children]
FROM
	[Test3799Item] [item_1]
		LEFT JOIN (
			SELECT
				[a_Children].[Name],
				[a_Children].[Id] as [Children],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
				[a_Children].[ParentId]
			FROM
				[Test3799Item] [a_Children]
		) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3799Item]

