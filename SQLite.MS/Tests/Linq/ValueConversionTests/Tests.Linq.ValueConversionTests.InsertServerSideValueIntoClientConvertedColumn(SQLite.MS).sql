-- SQLite.MS SQLite
INSERT INTO [ShiftedDateRow]
(
	[Id],
	[Plain],
	[Date]
)
VALUES
(
	1,
	DATETIME('now', 'localtime'),
	DATETIME('now', 'localtime')
)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]
LIMIT 2

