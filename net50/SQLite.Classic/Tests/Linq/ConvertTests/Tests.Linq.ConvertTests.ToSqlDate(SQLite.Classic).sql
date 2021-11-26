BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as NVarChar(100)) || '-01-01')
FROM
	[LinqDataTypes] [t]

