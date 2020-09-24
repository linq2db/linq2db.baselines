﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [DynamicTable]
(
	[ID]             INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Not Identifier] INTEGER  NOT NULL,
	[Some Value]     INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[t1].[Not Identifier],
	Count(*),
	Sum([t1].[Some Value])
FROM
	[DynamicTable] [t1]
GROUP BY
	[t1].[Not Identifier]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [DynamicTable]

