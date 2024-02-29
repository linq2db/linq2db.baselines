BeforeExecute
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
	[key_data_result].[Id],
	[key_data_result].[Id_1],
	[detail_1].[Name]
FROM
	(
		SELECT DISTINCT
			[detail].[Id],
			[item_1].[Id] as [Id_1]
		FROM
			[Test3799Item] [item_1]
				INNER JOIN [Test3799Item] [detail] ON [item_1].[Id] = [detail].[ParentId]
	) [key_data_result]
		INNER JOIN [Test3799Item] [detail_1] ON [key_data_result].[Id] = [detail_1].[ParentId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Id],
	[detail].[Name],
	[detail].[Id]
FROM
	[Test3799Item] [item_1]
		INNER JOIN [Test3799Item] [detail] ON [item_1].[Id] = [detail].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Test3799Item] [item_1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3799Item]

