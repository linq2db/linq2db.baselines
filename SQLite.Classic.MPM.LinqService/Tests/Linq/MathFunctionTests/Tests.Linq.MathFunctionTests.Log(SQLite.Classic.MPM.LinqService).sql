BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(Ln(CAST([p].[MoneyValue] AS Float))) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

