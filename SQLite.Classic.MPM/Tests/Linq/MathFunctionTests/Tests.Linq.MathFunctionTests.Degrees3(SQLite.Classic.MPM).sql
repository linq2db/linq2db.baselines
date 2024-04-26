BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Degrees(CAST([t].[MoneyValue] AS INTEGER)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	CAST([t_1].[c1] AS Float) <> 0.10000000000000001

