-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DropTableTest]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [DropTableTest]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

