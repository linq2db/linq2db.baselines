BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date([d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	Cast(StrFTime('%d', [d].[DateTimeValue]) as int) > 0

