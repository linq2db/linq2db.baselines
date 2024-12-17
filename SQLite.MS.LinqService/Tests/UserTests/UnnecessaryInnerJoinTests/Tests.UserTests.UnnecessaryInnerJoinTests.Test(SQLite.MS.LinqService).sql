BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table1]
(
	[Field1] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field2] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table2]
(
	[Field2] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Field2]
FROM
	[Table2] [t1]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Table1] [x]
		WHERE
			[t1].[Field2] = [x].[Field2] AND CAST([x].[Field1] AS BigInt) IN (1, 2, 3)
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table1]

