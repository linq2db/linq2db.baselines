-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DropTableTest]

-- SQLite.MS SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY ([ID])
)

-- SQLite.MS SQLite

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

-- SQLite.MS SQLite

DROP TABLE [DropTableTest]

-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

