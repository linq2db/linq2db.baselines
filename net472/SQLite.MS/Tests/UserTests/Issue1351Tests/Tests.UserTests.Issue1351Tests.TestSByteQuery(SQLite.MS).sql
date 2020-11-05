BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [T1351Model]
(
	[ID]           INTEGER NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	[_].[TestField] = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	([_].[TestNullable] <> 1 OR [_].[TestNullable] IS NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [T1351Model]

