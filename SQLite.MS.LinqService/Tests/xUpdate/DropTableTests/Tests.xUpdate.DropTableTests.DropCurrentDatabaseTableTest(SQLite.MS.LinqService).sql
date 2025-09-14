BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE [DropTableTest]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

