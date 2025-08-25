BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [TestIdTrun]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TABLE [TestIdTrun]
(
	[ID]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field1] Decimal  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM [TestIdTrun]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME='TestIdTrun'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE [TestIdTrun]

