BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%M', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],-8 || ' Minute'))) as int)
FROM
	[LinqDataTypes] [t]

