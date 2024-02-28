BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-02-24 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-02-24 00:00:00')) as int) > 0

