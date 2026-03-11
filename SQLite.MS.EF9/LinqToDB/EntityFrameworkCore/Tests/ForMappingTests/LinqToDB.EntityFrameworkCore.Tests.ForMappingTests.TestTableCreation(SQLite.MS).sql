-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[WithIdentity]
(
	[Id]   INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name] TEXT     NOT NULL
)



-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[NoIdentity]
(
	[Id]   TEXT NOT NULL,
	[Name] TEXT NOT NULL,

	CONSTRAINT [PK_NoIdentity] PRIMARY KEY ([Id])
)



-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[WithIdentity]



