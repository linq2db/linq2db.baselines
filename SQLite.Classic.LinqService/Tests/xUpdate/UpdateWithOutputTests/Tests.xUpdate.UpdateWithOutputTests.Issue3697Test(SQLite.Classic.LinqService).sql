BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3697]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3697Item]
(
	[Id]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]  INTEGER  NOT NULL,
	[TestId] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 3
DECLARE @TestId  -- Int32
SET     @TestId = 1

INSERT INTO [Test3697Item]
(
	[Value],
	[TestId]
)
VALUES
(
	@Value,
	@TestId
)

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[Test3697Item]
SET
	[Value] = 1
FROM
	[Test3697] [a]
WHERE
	[a].[Id] = [Test3697Item].[TestId]
RETURNING
	[Test3697Item].[Id]

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[Test3697Item]
SET
	[Value] = 1
FROM
	[Test3697] [a]
WHERE
	[a].[Id] = [Test3697Item].[TestId]
RETURNING
	[Test3697Item].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697]

