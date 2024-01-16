BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTrun]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TestTrun]
(
	[ID]     INTEGER NOT NULL,
	[Field1] Decimal NOT NULL,

	CONSTRAINT [PK_TestTrun] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM [TestTrun]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TestTrun]

