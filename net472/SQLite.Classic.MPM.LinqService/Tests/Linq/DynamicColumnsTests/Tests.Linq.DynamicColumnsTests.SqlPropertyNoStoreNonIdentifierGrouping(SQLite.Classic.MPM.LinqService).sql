BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicTable]
(
	[ID]             INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Not Identifier] INTEGER  NOT NULL,
	[Some Value]     INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1  -- Int32
SET     @Value_1 = 5

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @NotIdentifier  -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1  -- Int32
SET     @Value_1 = 5

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Not Identifier],
	Count(*),
	Sum([t1].[Some Value])
FROM
	[DynamicTable] [t1]
GROUP BY
	[t1].[Not Identifier]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicTable]

