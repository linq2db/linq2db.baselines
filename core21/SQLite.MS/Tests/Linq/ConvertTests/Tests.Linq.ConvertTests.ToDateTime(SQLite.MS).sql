BeforeExecute
-- SQLite.MS SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-01-01 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-01-01 00:00:00')) as int) > 0

