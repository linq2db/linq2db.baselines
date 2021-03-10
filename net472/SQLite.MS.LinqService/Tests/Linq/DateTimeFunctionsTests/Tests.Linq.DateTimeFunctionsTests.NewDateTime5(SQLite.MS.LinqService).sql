BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(Cast((Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1) as VarChar(11)) || '-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

