BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

