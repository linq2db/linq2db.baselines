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

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Not Identifier],
	Count(*),
	Sum([t1].[Some Value])
FROM
	[DynamicTable] [t1]
GROUP BY
	[t1].[Not Identifier]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicTable]

