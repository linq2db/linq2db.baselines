BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicTable]
(
	[ID]             INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Not Identifier] INTEGER  NOT NULL,
	[Some Value]     INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicTable]

