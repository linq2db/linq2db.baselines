BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DynamicTable]
(
	[ID]             INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Not Identifier] INTEGER  NOT NULL,
	[Some Value]     INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicTable]

