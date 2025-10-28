BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CASE
		WHEN [t].[Value_1] > 0 THEN CAST([t].[Value_1] AS INTEGER)
		ELSE CAST([t].[Value_1] - 0.99999999999999989 AS INTEGER)
	END
FROM
	(
		SELECT
			Degrees(CAST([p].[MoneyValue] AS Float)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

