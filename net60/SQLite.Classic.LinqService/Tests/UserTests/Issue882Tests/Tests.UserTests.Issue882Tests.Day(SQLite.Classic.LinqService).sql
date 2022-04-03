BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%d', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

