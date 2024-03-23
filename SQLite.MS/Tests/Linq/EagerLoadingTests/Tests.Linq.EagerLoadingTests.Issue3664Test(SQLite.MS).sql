BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3664]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Test3664]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Test3664] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Test3664]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3664Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Test3664Item]
(
	[Id]     INTEGER NOT NULL,
	[TestId] INTEGER NOT NULL,

	CONSTRAINT [PK_Test3664Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
VALUES
(11,1),
(12,1)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3664Item]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3664]

