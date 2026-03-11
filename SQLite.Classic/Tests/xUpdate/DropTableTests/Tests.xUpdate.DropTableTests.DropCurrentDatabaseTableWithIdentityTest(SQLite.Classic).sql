-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DropTableTestID]

-- SQLite.Classic SQLite

CREATE TABLE [DropTableTestID]
(
	[ID]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ID1] INTEGER  NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SQLite.Classic SQLite

DROP TABLE [DropTableTestID]

-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

