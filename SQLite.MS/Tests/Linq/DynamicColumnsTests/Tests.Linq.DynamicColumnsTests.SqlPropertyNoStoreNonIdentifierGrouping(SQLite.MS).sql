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

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_1].[Not Identifier],
	COUNT(*),
	SUM([g_1].[Some Value])
FROM
	[DynamicTable] [g_1]
GROUP BY
	[g_1].[Not Identifier]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicTable]

