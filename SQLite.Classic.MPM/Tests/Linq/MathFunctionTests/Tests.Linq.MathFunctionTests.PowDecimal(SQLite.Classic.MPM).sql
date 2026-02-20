-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Floor(CAST(Power(CAST([p].[MoneyValue] AS FloatDouble), CAST(3 AS FloatDouble)) AS Decimal)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

