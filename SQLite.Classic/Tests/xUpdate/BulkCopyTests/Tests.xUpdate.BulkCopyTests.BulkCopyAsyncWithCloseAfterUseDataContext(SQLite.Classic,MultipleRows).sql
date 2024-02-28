BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SimpleBulkCopyTable]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

