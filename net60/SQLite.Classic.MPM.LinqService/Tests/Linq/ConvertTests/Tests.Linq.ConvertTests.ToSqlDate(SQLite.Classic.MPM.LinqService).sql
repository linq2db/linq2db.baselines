BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Date(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-01-01')
FROM
	[LinqDataTypes] [t]

