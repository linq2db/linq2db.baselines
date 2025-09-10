BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[TableWithPrimaryKey2]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY ([Key])
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO temp.[TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TableWithPrimaryKey2]

