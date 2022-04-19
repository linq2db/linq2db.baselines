BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime('2010-' || printf('%02d', [p].[ID]) || '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

