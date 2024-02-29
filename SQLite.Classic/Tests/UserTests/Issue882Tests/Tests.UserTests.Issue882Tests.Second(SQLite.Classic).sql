BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%S', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

