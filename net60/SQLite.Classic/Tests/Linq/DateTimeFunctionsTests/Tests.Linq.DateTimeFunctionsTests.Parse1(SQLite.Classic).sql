BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%d', [t].[DateTimeValue]) as int) > 0

