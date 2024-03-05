BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Date(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) || '-01-01')
FROM
	[LinqDataTypes] [t]

