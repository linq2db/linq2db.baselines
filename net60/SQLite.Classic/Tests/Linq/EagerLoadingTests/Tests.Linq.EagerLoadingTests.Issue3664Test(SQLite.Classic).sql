﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3664]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3664]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Test3664] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3664Item]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3664Item]
(
	[Id]     INTEGER NOT NULL,
	[TestId] INTEGER NOT NULL,

	CONSTRAINT [PK_Test3664Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 11

SELECT
	[lw_Test3664].[Id],
	[a].[Id],
	[a].[TestId]
FROM
	[Test3664] [lw_Test3664]
		INNER JOIN [Test3664Item] [a] ON [lw_Test3664].[Id] = [a].[TestId] AND [a].[Id] = @id

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 12

SELECT
	[lw_Test3664].[Id],
	[a].[Id],
	[a].[TestId]
FROM
	[Test3664] [lw_Test3664]
		INNER JOIN [Test3664Item] [a] ON [lw_Test3664].[Id] = [a].[TestId] AND [a].[Id] = @id

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3664Item]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3664]

