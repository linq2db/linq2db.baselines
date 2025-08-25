BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [DropTableTestID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TABLE [DropTableTestID]
(
	[ID]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ID1] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

