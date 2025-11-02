-- SQLite.MS SQLite

SELECT
	CASE
		WHEN Log10(CAST([t].[MoneyValue] AS Float)) > 0 THEN CAST(Log10(CAST([t].[MoneyValue] AS Float)) AS INTEGER)
		ELSE CAST(Log10(CAST([t].[MoneyValue] AS Float)) - 0.99999999999999989 AS INTEGER)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(CASE
		WHEN Log10(CAST([t].[MoneyValue] AS Float)) > 0 THEN CAST(Log10(CAST([t].[MoneyValue] AS Float)) AS INTEGER)
		ELSE CAST(Log10(CAST([t].[MoneyValue] AS Float)) - 0.99999999999999989 AS INTEGER)
	END AS Float) <> 0.10000000000000001

