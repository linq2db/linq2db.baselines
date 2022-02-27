BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE [TableWithPrimaryKey]
(
	[Key] INTEGER NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY ([Key])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TableWithPrimaryKey]
(
	[Key]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithPrimaryKey]

