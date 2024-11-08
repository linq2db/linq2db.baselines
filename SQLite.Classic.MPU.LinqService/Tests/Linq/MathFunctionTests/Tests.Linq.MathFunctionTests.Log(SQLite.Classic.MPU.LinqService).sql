BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Log(CAST([p].[MoneyValue] AS Float))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

