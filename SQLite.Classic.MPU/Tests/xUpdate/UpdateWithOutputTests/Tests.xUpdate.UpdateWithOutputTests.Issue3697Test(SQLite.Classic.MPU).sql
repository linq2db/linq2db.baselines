BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3697]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3697Item]
(
	[Id]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]  INTEGER  NOT NULL,
	[TestId] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Test3697Item]
(
	[Value],
	[TestId]
)
VALUES
(3,1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3697]

