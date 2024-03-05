﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3697]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Test3697]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Test3697Item]
(
	[Id]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]  INTEGER  NOT NULL,
	[TestId] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

UPDATE
	[Test3697Item]
SET
	[Value] = @Value
FROM
	[Test3697] [a]
WHERE
	[a].[Id] = [Test3697Item].[TestId]
RETURNING
	[Test3697Item].[Id]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

UPDATE
	[Test3697Item]
SET
	[Value] = @Value
FROM
	[Test3697] [a]
WHERE
	[a].[Id] = [Test3697Item].[TestId]
RETURNING
	[Test3697Item].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3697Item]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3697]

