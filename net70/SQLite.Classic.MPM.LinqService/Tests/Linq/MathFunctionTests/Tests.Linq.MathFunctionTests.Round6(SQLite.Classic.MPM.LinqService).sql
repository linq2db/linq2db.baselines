BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Round(Cast([t].[MoneyValue] as Float), 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL)

