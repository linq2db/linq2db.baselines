BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

