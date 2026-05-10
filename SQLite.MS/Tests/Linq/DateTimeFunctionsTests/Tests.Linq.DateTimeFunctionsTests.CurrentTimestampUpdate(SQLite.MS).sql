-- SQLite.MS SQLite

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = 1,
	[DateTimeValue] = DATETIME('now', 'localtime')
WHERE
	[LinqDataTypes].[ID] = 100000

