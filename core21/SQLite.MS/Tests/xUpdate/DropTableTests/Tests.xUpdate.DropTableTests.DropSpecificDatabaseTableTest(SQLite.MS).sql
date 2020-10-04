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

INSERT INTO [main].[DropTableTest]
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
	[main].[DropTableTest] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [main].[DropTableTest]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

