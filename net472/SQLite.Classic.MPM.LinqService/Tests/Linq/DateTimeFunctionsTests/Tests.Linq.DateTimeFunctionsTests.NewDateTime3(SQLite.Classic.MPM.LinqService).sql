BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime(CASE
				WHEN Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) IS NULL
					THEN ''
				ELSE Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as NVarChar(11))
			END || '-10-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

