BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-10-01 20:35:44')
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%m', DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-10-01 20:35:44')) as int) = 10

