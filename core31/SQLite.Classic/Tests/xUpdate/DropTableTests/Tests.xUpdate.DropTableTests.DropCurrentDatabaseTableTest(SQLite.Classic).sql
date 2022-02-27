BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [DropTableTest]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

