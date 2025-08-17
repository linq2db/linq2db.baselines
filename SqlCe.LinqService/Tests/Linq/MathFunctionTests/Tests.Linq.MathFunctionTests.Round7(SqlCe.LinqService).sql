BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN [t].[MoneyValue] - FLOOR([t].[MoneyValue]) = 0.5 AND (CAST(FLOOR([t].[MoneyValue]) AS Int) % 2) = 0
			THEN FLOOR([t].[MoneyValue])
		ELSE ROUND([t].[MoneyValue], 0)
	END <> 0

