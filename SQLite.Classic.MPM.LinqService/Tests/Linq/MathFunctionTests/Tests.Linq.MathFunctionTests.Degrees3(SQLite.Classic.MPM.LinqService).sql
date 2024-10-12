BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[Value_1]
FROM
	(
		SELECT
			Degrees(CAST([t].[MoneyValue] AS INTEGER)) as [Value_1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	CAST([t_1].[Value_1] AS Float) <> 0.10000000000000001

