BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[TableWithPrimaryKey2]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY ([Key])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TableWithPrimaryKey2]

