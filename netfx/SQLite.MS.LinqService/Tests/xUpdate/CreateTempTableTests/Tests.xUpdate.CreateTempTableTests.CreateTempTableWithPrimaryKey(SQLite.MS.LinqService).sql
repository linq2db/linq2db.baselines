BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TableWithPrimaryKey]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY ([Key])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TableWithPrimaryKey]

