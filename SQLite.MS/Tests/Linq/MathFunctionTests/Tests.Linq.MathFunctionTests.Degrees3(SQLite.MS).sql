BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Degrees(CAST([p].[MoneyValue] AS INTEGER)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	CAST([t].[Value_1] AS Float) <> 0.10000000000000001

