BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicTable]
(
	[ID]             INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Not Identifier] INTEGER  NOT NULL,
	[Some Value]     INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value  -- Int32
SET     @Value = 5

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value  -- Int32
SET     @Value = 5

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[Not Identifier],
	COUNT(*),
	SUM([g_1].[Some Value])
FROM
	[DynamicTable] [g_1]
GROUP BY
	[g_1].[Not Identifier]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicTable]

