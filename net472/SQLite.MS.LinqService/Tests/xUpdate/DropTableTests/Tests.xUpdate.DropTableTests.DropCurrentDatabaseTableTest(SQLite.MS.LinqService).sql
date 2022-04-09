BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [DropTableTest]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

