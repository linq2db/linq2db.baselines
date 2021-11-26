BeforeExecute
-- SQLite.Classic SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as NVarChar(100)) || '-01-01 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as NVarChar(100)) || '-01-01 00:00:00')) as int) > 0

