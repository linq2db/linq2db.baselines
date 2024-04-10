BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '1 Year'))
FROM
	[LinqDataTypes] [t]

