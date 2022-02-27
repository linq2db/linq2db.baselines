BeforeExecute
-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TableWithPrimaryKey]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY ([Key])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO temp.[TableWithPrimaryKey]
(
	[Key]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TableWithPrimaryKey]

