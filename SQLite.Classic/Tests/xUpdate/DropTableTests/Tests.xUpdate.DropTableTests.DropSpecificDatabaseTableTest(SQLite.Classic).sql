BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [DropTableTest]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [main].[DropTableTest]
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
	[main].[DropTableTest] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [main].[DropTableTest]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[main].[DropTableTest] [t1]

