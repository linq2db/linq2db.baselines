BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date(Cast((Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1) as VarChar(11)) || '-10-01')
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%m', Date(Cast((Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1) as VarChar(11)) || '-10-01')) as int) = 10

