-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DropTableTest]

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [main].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [main].[DropTableTest]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

