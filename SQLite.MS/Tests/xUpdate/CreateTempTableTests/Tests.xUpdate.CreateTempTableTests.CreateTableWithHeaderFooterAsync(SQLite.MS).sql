BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateTableWithHeaderFooter]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.CreateTableWithHeaderFooter
(
	[ID] INTEGER NOT NULL
)
/* THIS IS ASYNC FOOTER*/

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[CreateTableWithHeaderFooter]

