BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	CASE
		WHEN Atan2(CAST([t].[MoneyValue] AS Float) / 15, 0) * 15 > 0
			THEN CAST(Atan2(CAST([t].[MoneyValue] AS Float) / 15, 0) * 15 AS INTEGER)
		ELSE CAST(Atan2(CAST([t].[MoneyValue] AS Float) / 15, 0) * 15 - 0.99999999999999989 AS INTEGER)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(CASE
		WHEN Atan2(CAST([t].[MoneyValue] AS Float) / 15, 0) * 15 > 0
			THEN CAST(Atan2(CAST([t].[MoneyValue] AS Float) / 15, 0) * 15 AS INTEGER)
		ELSE CAST(Atan2(CAST([t].[MoneyValue] AS Float) / 15, 0) * 15 - 0.99999999999999989 AS INTEGER)
	END AS Float) <> 0.10000000000000001

