BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[d].[DateTimeValue]
FROM
	[LinqDataTypes] [d]
WHERE
	Cast(StrFTime('%d', [d].[DateTimeValue]) as int) > 0

