BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(CASE
				WHEN Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1 IS NULL
					THEN ''
				ELSE Cast((Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1) as NVarChar(11))
			END || '-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

