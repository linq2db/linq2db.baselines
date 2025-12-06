-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TableWithPrimaryKey2]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY ([Key])
)

-- SQLite.Classic SQLite

INSERT INTO temp.[TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(1)

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TableWithPrimaryKey2]

