BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal) > 0
			THEN CAST(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal) AS INTEGER)
		ELSE CAST(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal) - 0.9999999999999999 AS INTEGER)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(CASE
		WHEN CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal) > 0
			THEN CAST(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal) AS INTEGER)
		ELSE CAST(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal) - 0.9999999999999999 AS INTEGER)
	END AS Decimal) <> 0

