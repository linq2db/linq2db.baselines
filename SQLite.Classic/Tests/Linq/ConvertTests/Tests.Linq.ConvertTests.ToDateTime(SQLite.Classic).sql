BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) || '-01-01 00:00:00'
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) || '-01-01 00:00:00')) as int) > 0

