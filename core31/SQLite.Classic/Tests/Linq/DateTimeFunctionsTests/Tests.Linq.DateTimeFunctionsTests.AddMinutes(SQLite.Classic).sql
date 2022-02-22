BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],-8 || ' Minute')
FROM
	[LinqDataTypes] [t]

