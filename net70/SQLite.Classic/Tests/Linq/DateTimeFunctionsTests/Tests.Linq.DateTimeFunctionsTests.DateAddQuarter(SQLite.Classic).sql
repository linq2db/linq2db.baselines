BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(-1*3) || ' Month')
FROM
	[LinqDataTypes] [t]

