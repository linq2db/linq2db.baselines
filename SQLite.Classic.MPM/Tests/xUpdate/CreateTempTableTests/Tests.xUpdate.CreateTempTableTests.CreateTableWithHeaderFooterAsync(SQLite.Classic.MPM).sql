BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateTableWithHeaderFooter]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.CreateTableWithHeaderFooter
(
	[ID] INTEGER NOT NULL
)
/* THIS IS ASYNC FOOTER*/

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[CreateTableWithHeaderFooter]

