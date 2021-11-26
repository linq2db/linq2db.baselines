BeforeExecute
-- SQLite.MS SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as NVarChar(100)) || '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

