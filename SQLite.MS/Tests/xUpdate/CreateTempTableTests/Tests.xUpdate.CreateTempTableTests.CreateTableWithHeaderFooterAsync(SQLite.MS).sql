-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateTableWithHeaderFooter]

-- SQLite.MS SQLite

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.[CreateTableWithHeaderFooter]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_CreateTableWithHeaderFooter] PRIMARY KEY ([ID])
)
/* THIS IS ASYNC FOOTER*/

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[CreateTableWithHeaderFooter]

