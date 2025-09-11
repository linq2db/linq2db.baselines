BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateTableWithHeaderFooter]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.[CreateTableWithHeaderFooter]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_CreateTableWithHeaderFooter] PRIMARY KEY ([ID])
)
/* THIS IS ASYNC FOOTER*/

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[CreateTableWithHeaderFooter]

