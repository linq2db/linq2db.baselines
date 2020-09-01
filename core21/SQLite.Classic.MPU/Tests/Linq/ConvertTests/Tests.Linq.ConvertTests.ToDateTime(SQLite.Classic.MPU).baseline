BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			DateTime(Cast(Cast(StrFTime('%Y', [t].[DateTimeValue]) as int) as VarChar(11)) || '-01-01 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	Cast(StrFTime('%d', [p].[c1]) as int) > 0

