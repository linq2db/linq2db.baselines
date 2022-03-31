BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime('2010-' || CASE
				WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
				ELSE [p].[ID]
			END || '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

