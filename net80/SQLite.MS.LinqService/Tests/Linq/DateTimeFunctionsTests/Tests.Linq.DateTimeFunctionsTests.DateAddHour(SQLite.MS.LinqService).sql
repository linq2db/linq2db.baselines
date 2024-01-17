BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%H', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],1 || ' Hour'))) as int)
FROM
	[LinqDataTypes] [t]

