BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%M', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],5 || ' Minute'))) as int)
FROM
	[LinqDataTypes] [t]

