BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%M', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

