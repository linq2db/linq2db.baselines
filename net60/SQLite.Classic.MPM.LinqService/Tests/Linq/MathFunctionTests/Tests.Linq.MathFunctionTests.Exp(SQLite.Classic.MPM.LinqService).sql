BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Exp(Cast([t].[MoneyValue] as Float))) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0.10000000000000001 OR [t_1].[c1] IS NULL)

