BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTrun]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [TestTrun]
(
	[ID]     INTEGER NOT NULL,
	[Field1] Decimal NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM [TestTrun]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [TestTrun]

