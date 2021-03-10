BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[d].[c1]
FROM
	(
		SELECT
			DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-02-24 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	Cast(StrFTime('%d', [d].[c1]) as int) > 0

