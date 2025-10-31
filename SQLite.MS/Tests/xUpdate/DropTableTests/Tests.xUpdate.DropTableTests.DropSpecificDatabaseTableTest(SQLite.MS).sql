-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DropTableTest]

-- SQLite.MS SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO [main].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

-- SQLite.MS SQLite

DROP TABLE [main].[DropTableTest]

-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

