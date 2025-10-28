BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN Cosh(CAST([t].[MoneyValue] AS Float) / 15) * 15 > 0
			THEN CAST(Cosh(CAST([t].[MoneyValue] AS Float) / 15) * 15 AS INTEGER)
		ELSE CAST(Cosh(CAST([t].[MoneyValue] AS Float) / 15) * 15 - 0.99999999999999989 AS INTEGER)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(CASE
		WHEN Cosh(CAST([t].[MoneyValue] AS Float) / 15) * 15 > 0
			THEN CAST(Cosh(CAST([t].[MoneyValue] AS Float) / 15) * 15 AS INTEGER)
		ELSE CAST(Cosh(CAST([t].[MoneyValue] AS Float) / 15) * 15 - 0.99999999999999989 AS INTEGER)
	END AS Float) <> 0.10000000000000001

