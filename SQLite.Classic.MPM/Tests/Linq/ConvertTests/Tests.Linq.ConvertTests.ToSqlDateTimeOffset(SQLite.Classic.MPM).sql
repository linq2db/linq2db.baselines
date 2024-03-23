BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	DateTime(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) || '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

