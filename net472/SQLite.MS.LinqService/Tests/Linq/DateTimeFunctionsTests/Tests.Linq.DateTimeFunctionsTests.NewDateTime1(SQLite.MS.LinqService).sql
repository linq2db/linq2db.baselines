BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-10-01')
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%m', Date(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-10-01')) as int) = 10

