BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_temp]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_temp]
(
	[ID]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field1] Decimal  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM [test_temp]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
LIMIT 2 OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM [test_temp]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
LIMIT 2 OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_temp]

