BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SimpleBulkCopyTable]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(2)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

