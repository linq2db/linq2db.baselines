-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			ROUND(CAST([p].[MoneyValue] AS FloatDouble)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

