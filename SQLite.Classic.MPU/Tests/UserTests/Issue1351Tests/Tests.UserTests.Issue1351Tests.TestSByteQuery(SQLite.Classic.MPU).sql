BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [T1351Model]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [T1351Model]
(
	[ID]           INTEGER NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestField] = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestNullable] <> 1 OR [t1].[TestNullable] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [T1351Model]

