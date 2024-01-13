BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%S', (strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],-35 || ' Second'))) as int)
FROM
	[LinqDataTypes] [t]

