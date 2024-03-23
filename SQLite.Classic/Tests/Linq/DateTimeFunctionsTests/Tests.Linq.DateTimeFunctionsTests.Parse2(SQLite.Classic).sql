BeforeExecute
-- SQLite.Classic SQLite

SELECT
	DateTime(Cast(StrFTime('%Y', [d].[DateTimeValue]) as int) || '-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(StrFTime('%Y', [d].[DateTimeValue]) as int) || '-02-24 00:00:00')) as int) > 0

