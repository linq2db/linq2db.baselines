BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN CAST([t].[MoneyValue] AS Float) - FLOOR(CAST([t].[MoneyValue] AS Float)) = 0.5 AND (CAST(FLOOR(CAST([t].[MoneyValue] AS Float)) AS Int) % 2) = 0
			THEN FLOOR(CAST([t].[MoneyValue] AS Float))
		ELSE ROUND(CAST([t].[MoneyValue] AS Float), 0)
	END <> 0

