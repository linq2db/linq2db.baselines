BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%S', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],41 || ' Second'))) as int)
FROM
	[LinqDataTypes] [t]

