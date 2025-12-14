-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DropTableTestID]

-- SQLite.MS SQLite

CREATE TABLE [DropTableTestID]
(
	[ID]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ID1] INTEGER  NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SQLite.MS SQLite

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SQLite.MS SQLite

DROP TABLE [DropTableTestID]

-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

