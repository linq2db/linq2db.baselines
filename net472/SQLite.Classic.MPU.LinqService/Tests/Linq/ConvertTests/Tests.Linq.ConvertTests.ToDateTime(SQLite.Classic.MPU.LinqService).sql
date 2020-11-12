BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	DateTime(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-01-01 00:00:00')
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%d', DateTime(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-01-01 00:00:00')) as int) > 0

