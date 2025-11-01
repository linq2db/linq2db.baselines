-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestIdTrun]

-- SQLite.MS SQLite

CREATE TABLE [TestIdTrun]
(
	[ID]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field1] Decimal  NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.MS SQLite

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]
LIMIT 2 OFFSET @skip

-- SQLite.MS SQLite

DELETE FROM [TestIdTrun]

-- SQLite.MS SQLite

UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME='TestIdTrun'

-- SQLite.MS SQLite

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.MS SQLite

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]
LIMIT 2 OFFSET @skip

-- SQLite.MS SQLite

DROP TABLE [TestIdTrun]

