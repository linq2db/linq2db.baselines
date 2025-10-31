-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DropTableTest]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [main].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [main].[DropTableTest]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

