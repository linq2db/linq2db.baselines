BeforeExecute
-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE [TableWithPrimaryKey]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY ([Key])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [TableWithPrimaryKey]
(
	[Key]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithPrimaryKey]

